TV 프로그램을 다운로드 받기 위해 매번 토렌트 사이트를 접속하며 토렌트 시드 파일 다운로드 받기가 귀찮으셨지요?
원하는 TV 프로그램을 토렌트 사이트에 업로드 될때마다 자동으로 다운로드해주면 얼마나 편리할까요?
토렌트(마그넷) 자동 다운로드 프로젝트 - torrent_web_scraper는 원하는 토렌트 파일을 자동으로 다운로드 해주는
웹스크랩퍼(웹크롤러)입니다. torrent_web_scraper를 사용하면 토렌트(마그넷) 다운로드를 위해 토렌트 사이트를
방문할 필요가 없어집니다. torrent_web_scraper의 자세한 소개와 사용법을 확인해보세요.

**토렌트 자동 다운로드 프로젝트 - torrent_web_scraper 실행 환경**  
실행 OS : 리눅스 - 우분투,데비안, 라즈베리파이(라즈비안) 등   
실행 언어 : Python3

## 1. torrent_web_scraper 소개하기

torrent_web_scraper는 매일 새로 업로드되는 예능 프로그램을 다운로드하기
위해 토렌트 사이트를 돌아다니기 귀찮아서 제작을 구상하게 되었습니다. 
torrent_web_scraper의 동작 개념도는 아래와 같습니다.  


![토렌트 자동 다운로드 torrent_web_scraper 개념도](https://geeksvoyage.com/assets/images/2018-09-16-torrent-web-scraper-2-concept.jpg       )

다음 명령을 실행하면 파이썬라이브러리와 settings.json 파일과 program_list.json 파일이 생성됩니다. 이를 수정해서 사용하세요.
 $ ./install.sh

torrent_web_scraper를 실행하면, settings.json 파일과 program_list.json 파일에서 설정 내용을 
가져옵니다. settings.json 파일에는 로컬 컴퓨터의 transmission 정보가 담겨있고 
program_list.json 파일에는 다운로드를 진행할 TV 프로그램 정보가 담겨있습니다. 
torrent_web_scraper는 다운로드할 TV 프로그램 정보가 새로 업로드 되었는지 토렌트 사이트를 검색합니다. 

게시판에서 새로운 TV 프로그램 업로드가 확인되면 마그넷 정보를 읽어서 transmission으로 전달하여 다운로드를 진행합니다.
transmission과는 rpc통신을 하므로 활성화시켜야 하며, settings.json파일의 "trans-"로 시작하는 부분을 설정하여야 합니다.


torrent_web_scraper를 주기적으로 실행하게 설정해두면, 토렌트 사이트를 방문하여 새로 등록된 마그넷 파일이 있는지 확인하고,
자동으로 다운로드를 해줍니다. 따라서 토렌트 파일이 업로드 되었는지 토렌트 사이트를 확인할 필요가 없어집니다.

torrent_web_scraper는 파이썬3 기반으로 작성되었으며, 리눅스 기반인 우분투,데비안과 라즈베리파이(라즈비안)에서 동작을
확인하였습니다.

**주의** 토렌트 사이트를 웹 스크래핑하는 것은 불법이 아닙니다. 하지만, 토렌트를 사용하여 TV 프로그램 동영상을
다운로드하는 것은 저작권을 침해하는 불법 행위입니다. 이점을 이해하고 torrent_web_scraper 스크립트를 실행 여부를 결정하세요.

[https://github.com/geekdifferent/torrent_web_scraper]를 수정한 것입니다. 

web_scraper_daum_movie.py: 다음영화 관련 파싱 라이브러리  
movie_title_scraper.py: 다음 인기영화 스크래퍼  
"movie_list.txt": 다운받을 영화들, settings.json파일의 movie->list에서 설정     

