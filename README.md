Fuse HomeScreen [![Build Status](https://travis-ci.org/bolav/fuse-homescreen.svg?branch=master)](https://travis-ci.org/bolav/fuse-homescreen) ![Fuse Version](http://fuse-version.herokuapp.com/?repo=https://github.com/bolav/fuse-homescreen)
===============

Library to go to HomeScreen for [Fuse](http://www.fusetools.com/).

Status: beta

Go to HomeScreen on Android from Fuse.

## Installation

Using [fusepm](https://github.com/bolav/fusepm)

    $ fusepm install https://github.com/bolav/fuse-homescreen


## Usage:

    <Button Text="HomeScreen" >
      <Clicked>
        <HomeScreen Type="CallIntent" />
      </Clicked>
    </Button>

Use `CallIntent` or `Finish` for `Type`.
