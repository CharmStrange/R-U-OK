print("Hello, goorm!")
print("")

# Preparation
csv <- read.table("ts.csv", header=T, sep=',')
FilteryWord1 <- "광고노출수 : "
FilteryWord2 <- "광고클릭수 : "
FilteryWord3 <- "예상 수익 : "
# gsub("광고노출수 : |광고클릭수 : |예상수익 :", "", ) ?
#

expedition <- function(CSV) {
	MonthlyPosts <- CSV[2:9, 1:1] # 일단 행렬인데 열 벡터 / 왜 NULL ?
	MostPosts <- CSV[2:6, 6:36] # 얘네를 어떡하지 / 5행 31열
	MonthlyParameters <- CSV[8:11, 6:36] # 얘네를 어떡하지 / 4행 31열
	
	MonthlyIncome <- as.vector(MonthlyParameters[3:3, 1:31])
	
	for (cell in MonthlyIncome) {print(gsub(FilteryWord3, "", cell))}
	
	
	print("인덱싱을 통해 정보 확인 : 모든 게시물, 최다 조회 게시물, 게시물 속성 정보, 종합 수익")
}

expedition(csv)

