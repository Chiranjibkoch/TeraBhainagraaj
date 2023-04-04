# Ultroid - UserBot
# Copyright (C) 2021-2022 TeamUltroid
# This file is a part of < https://github.com/sakil0007/TeraBhainagraaj/ >
# PLease read the GNU Affero General Public License in <https://www.github.com/sakil0007/TeraBhainagraaj/blob/main/LICENSE/>.

FROM sakil0007/TeraBhainagraaj:main

# set timezone
ENV TZ=Asia/Kolkata
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

COPY installer.sh .

RUN bash installer.sh

# changing workdir
WORKDIR "/root/TeamUltroid"

# start the bot.
CMD ["bash", "startup"]
