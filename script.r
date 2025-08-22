print("Hello, goorm!")

csv <- read.table("ts.csv", header=T, sep=',')

expedition <- function(CSV) {
	MonthlyPosts <- as.vector( CSV[1:32, 1:1] ) # 일단 행렬인데 열 벡터
	MostPosts <- as.vector( CSV[2:6, 6:36] ) # 얘네를 어떡하지
	MonthlyParameters <- as.vector( CSV[8:11, 6:36] ) # 얘네를 어떡하지
	MonthlyIncome <- as.vector( CSV[11:11, 6:36] ) # 행렬인데 행 벡터
	
	print("벡터 인덱싱을 통해 정보 확인 : 모든 게시물, 최다 조회 게시물, 게시물 속성 정보, 종합 수익")
}

expedition(csv)
