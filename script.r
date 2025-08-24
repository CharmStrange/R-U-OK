print("Interprter OK")

### 
# Preparation
csv <- read.table("ts.csv", header=T, sep=',')

Filtering <- function(text) {
	filtered <- gsub("광고노출수 : |광고클릭수 : |예상 수익 :", "", text)
	return(filtered)
}
###
expedition <- function(CSV) {
	MonthlyPosts <- CSV[2:9, 1:1] # 일단 행렬인데 열 벡터 / 왜 NULL ?
	MostPosts <- CSV[2:6, 6:36] # 얘네를 어떡하지 / 5행 31열
	MonthlyParameters <- CSV[8:11, 6:36] # 얘네를 어떡하지 / 4행 31열
	
	MonthlyIncome <- MonthlyParameters[3:3, 1:31]
	
	NewMonthlyIncome <- c()
	
	# 데이터에 NA 끼어있으면 그냥 다 결측치로 처리가 되는 문제
	for (cell in MonthlyIncome) {
		tmp <- as.numeric(Filtering(cell))
		
		if (is.na(tmp)) {
			next
		} else {
			NewMonthlyIncome <- c(NewMonthlyIncome, tmp)
		}
	}
	
	SumNewMonthlyIncome <- sum(NewMonthlyIncome)
	
	print("인덱싱을 통해 정보 확인 : 모든 게시물, 최다 조회 게시물, 게시물 속성 정보, 종합 수익")
}

expedition(csv)

