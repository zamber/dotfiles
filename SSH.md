# Keys

## Conventions

Generate with:

    ssh-keygen -t rsa -b 4096 -C "`whoami`@`hostname`" -f ~/.ssh/id_rsa_`whoami`@`hostname`

Check with:

    ssh-keygen -lf .ssh/id_rsa
    # newer versions of ssh-keygen default to SHA256, GitHub shows MD5
    ssh-keygen -E md5 -lf .ssh/id_rsa

## Deprecated

    SHA256:ndRTEBUAF+nzpJWPdPgz0beQd2V2zFOtc9RkZOcHPKo
    MD5:78:a7:9c:e6:6b:d7:26:3c:28:78:4b:40:b7:19:70:e7
    ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCxFt0WAktGfkuEzGWt24Vb96bEvgvHljczvSSB7UrYiSloAZSiRqZBjCCfHGV+QJgBsr15ozCE4PSTTP8EYhu1afcJHrfBypm0+t068pXhk19Y7O9ew7n6Skt3iTobTkhsJPSVTPlJzETbd7rDzX+msHbBmPHWcFL0gquLOW6lLmWAxt8wKUcG21ktWPJUo8Siw40xH9IJqFHJ+z5nmachjJHOeV2HhPEvbBgh9ISnYT+UBd23Sordg/rI0DHm4KQyN086+5Sofy/ZQ5YTCNdOn9ooamkTiMgu0MeEOhZCCQnY2VhwushmVBhF7tWXVhK70QeMIOO8Exu1aIeUGnaj Zamber@macbook.local

## Active

## New

    SHA256:Si+bzQLSjmISBFUEawap9/MlbJ+rBrzRybZDekn8z2o
    MD5:61:48:1e:15:b9:35:a3:96:e6:22:e7:36:3c:ca:f7:af
    ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDrqxg1CFVdDLO0r0FB0npo0C+KjVVtVToKj7j0nSydyK9Z/w3KuKEQFpGMJUPCBNBjkUXHoA/ykHF4SDMNG9w6vzOv8OeMkwWNwYlEOcEQR5NFLP34Y3P4fw5BDdzGt1eC5cCGaNBDCSoFnswYBLY1qXApURkc/TNv3zIDJSNLxEluyFn1z/XtH76DKFwr9a/7v7JGG3wytabS88erVyIvV6aajcV3/KxI3GtWGZ2T8fDWyklI24MW7hc/5xSfdRsCoi7+MJWZxJSsZ68PU8K+GtLG1Pt0lffDvR+erQ4x71kMnXodCaew2MfMVb6b8UQYsmnpwyPxSbR7JE4yY3SECqce4LVklFEUOUox5ne6bCzE8yLzFmT+kLQME8Bl52aCB4FbjttcM7N+xvGmfVORL0dp35B7ChO95ApRJLjO7g3IKE5La+66joWBPTmaT4zodgjbrqSiinZaA+vvA5axdvNJyG/dk00JL0SfgHSbnMpUVePqHeuAQe1UleCIWT0nn2n3USdwuqIUiMvjsOESQIyR9o2IOcj112MSzRyAultKXGJOURYsYZXQtagRFNoSGNdoqG8V0AWWdPvH/+Rp03JDiH5t+O/OC5kgVhwPFow0achN543/cQ+CbSfgvsp9W2riUbeugWAsBHE6MxN/ruAXllFHNFT2iz4Io+KaDw== zamber@xwing

    SHA256:eLaUb3VP26Gi8HbIqSQ1S3FF5KvgPsJDijfiNC5AynM
    MD5:46:f4:5f:4e:be:7d:86:07:40:32:f6:d7:26:fb:4f:3c
    ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCrqb1AYxeRrShSyXTpO6BYQfBGupqjqNKBecMevy2m8lhtQqL8+dmWTDlly7xHNMCZTKht+3uVkBucGDi4zQ32sAOPeOpvc2JSPDK0Jx7pFh4VobUwu0yglzE1TVRVcTNmq+G/dEYoJwhNbYysxarFU7IdQdDna8NAsJq5Vu7KTmRxGubys1E6L5AjxBeyBsusQOsCyIfnFszkuSA4NC4Y3t1rXiWJ0M+wZvmPZ8nHrIdJrafunuKcUuVEBXbHdBjh615yTC9I4O6SDnhXasVVfgNJutoXyOyOVO/6HIqQ29cYgN0A593MdoJ5suhuu80WBdgI8r+BlVeo2mnMCnYECFf1cZMbvkrLtqT5LjU+z9taGqj/vWjOV5Fs4uq0Q/aH1n90hXfv43SgNJkqCrg2nJr4f3839QSrprOtiILLCLonp44M9cpSZuJoArlxbyIdoXr4lho8h4C9WrYDmArBTIzG/Ksb57NX8k8glXauqd4LNU8stsfsjng0jBwqvHgNl+U3y6rZCt+ScsIFNfmAmScFV19ZgXeU4ktkJLNijHG1c3fs2gOONilpUtFsGiomWWqzUehZ6XeNzYujXhb7o8A0st6OXeV1wKbxi41lv0mEUJjpAKGmiuCTcP/dEkNznPOZMvjX3nkWqL7RFda9VK4QJ3oS+kys8ml+QYeeqw== patrycja@patikot

    d9:bf:66:12:06:67:28:f0:17:b7:64:27:cf:66:65:38
    ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAgEAs1N3K5i1Gotje1udEOYYLPrqcwWGgeJybRZ2fITOUzcNKoPHON/ssWOw1qesHED1PWxnanfBlFyGYCwk3TAC0tyUFuAXBvhTU4138q8NV4mTiq3+R3aKORS5jzB+Xsmh2ER7ST2EG2Bx/Yq2pRatDzIN4CbwNI17fxMkzeT/n6LYFSnE94K9hSvNN4LxZ3lztT9URe633Bzk0Of0tGEv4v0Na/Xfz7JKi73FpxH0z2CyAYbok9Y3Ppa8Kyet2Hus9Yym7SSzeRpmMK1ItayzMTAygMRM5VG6Kpc/S9gfTq5F6SkwhpyD9KR3rnRdyU3eBjjc4A8zBna86/CJoUPK/saUgBOyWs9yCMknalEwPQkcIaGvqPlb2NLOCir62pzohUc/LjuEytl/ncET92shv3G2/uYyJ+p/fdr15ADOs++qvvDa3qRw/WwwoZCaWRsewy8A/ZI6xOzQa6gumQVk4bRErmQiA28JZaYtgwVmdRbPOgBAXZGwXAfj0qwEbOVh/qIi64nLsLMNbProCLRfjR6dMohswEI0MPeIiGo1XZ06LhSnpVQa+BX38Y19PJZowTh7hLlIPRLjKz/XO2pU/4q5YmGieP1Q/MO91fCWPOKmUyWOAiW6JbLfLmscdY8zQyoU2XnYHMUGPaJnU/tZtpPqwBUZ4KWLsPRm7g+rcQ8= zamber@host5.prosys.net

    b1:34:db:e3:55:d3:93:3b:f9:c4:db:11:bd:a0:f7:cb
    ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDQdfVUgT9LGUG41gq06qDziAQEjVJ3NShYnHeyI/mFT3rPtd8B/VAjCKSA4F+4AAxgrxFSJvKRHcWpn4vt9ivzc+f7SewUiVWkaMw5PVNfIzHSN54Hg0Z14GqeqNVq1n8F/Ah7yBBGgoI/wSe/pPCBVw6NPmgUEecva7d+RM2XprrcjnUTSkG7FxrypZ3IRSzSQuWNpSJRLkzPEBAxZpPMUQwB5xdaihruIXwpAiOaXSOZKu/hGqFujt8md11KXwVdZMNC0dMKlij11DwMg0XrcREBgZlNjxY+eHS3MCkhJBQSxj2Y93jg0iAjCPieXY1Q1SKBXXkeDSPre2d9KiUQKTi57AdJBwGSLksokoJ8QfIDdhjrx90pZqRvHvPlxp6d2Ew8zyNJsVE+Css9dLVzBXpNsPKmpZvtUXW4kYEKJR4Y6PEzkJnlc01kmG+tzRepLmenyOS40N5dwrCm0R6ZWMdMylPS7DfPS+TBNTkhE6Mz5EIv//rgJw4TiYLxOHA9x72iPP64r+pifG4fcf20aQLAjF5XYMlNuaK/9/yXnkdhq8JJ0N6o1HrJDwTOxPNicdeKkxEQJrfDuZNoosOAxqGcHk/AKWi0cSVCkh1C95K5j9Pe+JBAlFdeT5EtJhkrbtD1EIFYuOuydapjeIj14Fttt4GB4nTn/jWx2LOy1w== pi@raspberrypi

    SHA256:YosSCBJq7Htu+/CcGoDYjIO50AMbNnF6uetKmNuCPwk
    MD5:57:04:c0:43:f1:03:d3:7f:5e:27:81:85:25:b8:63:59
    ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDliIlju7D75eAjOBEtltV/KfRVXrx2RZEYbWvzbNFlGLA0eXUOhnq77Xa33xZZXCuZlm/5La90aaREW23pYM7g7xU3MyD8Fza+VKcWjRQ93Y4jw6lWN0ZbWmMwBfqaaQz67ypi0ftkbBuiHHues+vJqzIzARTD2Vnz/WYlKew+wKgcEZzduJyByt8ZGcY2zIPfbqKIBOMIbHc9E6FHcPXjgamDPPFe1fZDHHrib/EDNk4lHXGofG3GbrT/JgFKI6Wk25Ku/lrVLfhjSLqYGdqbkEmen2BNLiA1eRW0y1U6EdRluzRbPFnYy9OyHyxANvqZ9N5h6N3Fc+HaDYdOZgksvDzZ765dayO96a38alipjzkm+eCjV6Bvn25jeEUrcOT1OC3/cs1/bpa7DG/58W2zsq22FGdEKOsuBO494rt0R0+euRMnUMOhlihNL8icw48jidJ2PrORnPVF8GGUU4ymIra1/62aqeAWTY5tyV3gH+ktLm5GfKVvfb8iGmo3dOREaOBIo47W9hwh86NkT+OGVKQo8BLbZ2NEjvTD6LmLtRqs9Bwqn/kIIfW7i//1yuZ871mHRpkSKVEWW0rqGk5HOT5EeFL5NCQqOR9FFJ/59mhPtxnhUTYu0PcTj9nRmkzbFdXStQ0RGQHi+ibiAAIjHgEQ2jE8Jn5bjXXEIqrudQ== zamber@hyperdrive

    # add md5 later
    ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDRDhDyNPp2Dv5clxA+L5Ho39D8RZnE4I86nHEm1zb9Cih6Vo7LfF6sKz+hFUHESDQ109ONpj184ui9tFUPwwfQvpyjMX98gcnfTJK1quLQtmz2DZphtiefsEpFwRX2hHsbeiWBiX5lFfV1n5IrHgX78sRyJigVGdNK7SMva+L2aH8kSh9VEQ3gtmQjf0uu2YQ24GJPtN8zr5t/LjCAumM8nxVh6n0ev+wMDUX2cpWq4qifah2yJYYo0sHsQ9OpewpRCNWc+OGopw4+A4wh77w4NZyouq/0V4Y9j0Nl+GKUouY4JG1sp26Ijc8xB/JRiR55Rdc6pG95jfqnfWQVxpbfUmXv8hXDe6W7LqOUWPSgPBRG5etQdxAE5fZTdfRKEEwjqQqSWYX3hPbU/YfItBhusq3TmY3jhFNLA8XMyZlb6TX9FwF5DYBQ07MXcDFBnKZw1iKCyVMoEH8Ez58X6dcB+nfpMhncJplMQG0OUkzTaKbeD6t1JFhFKpwiOJpSFuGWw8Wh+9oOBnsTti0N9DOm8gln66yaF9PU2yefVIW7ctAO807L2X6QiHWrfpYyK/KcV5LYq6rsSoERHSOCFxVPI0y2l+5Qyg/MJCaiMu93TcjjS8Xzd14ptzOMhM3W3zMW2QH0nhE94PMqouCILVIBBxXALHWuKMcxjwMRzdYmiw== piotr@dominator