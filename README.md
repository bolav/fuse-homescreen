Fuse HomeScreen
===============

Library to go to HomeScreen for [Fuse](http://www.fusetools.com/).

Status: beta

Go to HomeScreen on Android from Fuse.

## Installation

Using [fusepm](https://github.com/bolav/fusepm)

    $ fusepm install https://github.com/bolav/fuse-backbutton-trigger


## Usage:

    <Button Text="HomeScreen" >
      <Clicked>
        <HomeScreen Type="CallIntent" />
      </Clicked>
    </Button>

Use `CallIntent` or `Finish` for `Type`.
