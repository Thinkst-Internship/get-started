# get-started
This document provides steps for the initial configuration of your Chromebook and development environment.
This is what you will need to complete this step:
* Your Chromebook
* An internet connection
* An iPhone or Android device

## Configure your Chromebook
1. Login to your Chromebook with your Gmail address (create one if nenecessary).
2. If you don’t already have a Github account [create one](https://github.com/signup) and forward your details
to your mentor. Make sure you enable [2 Factor Authentication](https://docs.github.com/en/github/authenticating-to-github/securing-your-account-with-two-factor-authentication-2fa/about-two-factor-authentication).
3. [Install Linux on your Chromebook](https://support.google.com/chromebook/answer/9145439?hl=en)
4. Start the Linux terminal and run the following.
```
/bin/bash -c "$(curl -fsSl https://raw.githubusercontent.com/Thinkst-Internship/get-started/main/chromebook-setup.sh)"
```
5. We use DUO for 2-Factor Authentication. Install the DUO app on your mobile phone.
* iPhone: https://apps.apple.com/us/app/duo-mobile/id422663827
* Android: https://play.google.com/store/apps/details?id=com.duosecurity.duomobile

Proceed onto the next step: [configure your tooling](https://github.com/Thinkst-Internship/configure-tooling/blob/main/README.md).

N.B If you can't access the [configure your tooling](https://github.com/Thinkst-Internship/configure-tooling/blob/main/README.md) URL you probably haven't done step #2 yet :) Send your GitHub login to your mentor to get access.
