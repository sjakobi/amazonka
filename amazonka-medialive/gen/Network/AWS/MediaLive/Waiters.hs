{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Waiters
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Waiters where

import Network.AWS.Lens
import Network.AWS.MediaLive.DescribeChannel
import Network.AWS.MediaLive.DescribeInput
import Network.AWS.MediaLive.DescribeMultiplex
import Network.AWS.MediaLive.Types
import Network.AWS.Prelude
import Network.AWS.Waiter

-- | Polls 'Network.AWS.MediaLive.DescribeMultiplex' every 5 seconds until a successful state is reached. An error is returned after 120 failed checks.
multiplexRunning :: Wait DescribeMultiplex
multiplexRunning =
  Wait
    { _waitName = "MultiplexRunning",
      _waitAttempts = 120,
      _waitDelay = 5,
      _waitAcceptors =
        [ matchAll
            "RUNNING"
            AcceptSuccess
            (dmrrsState . to toTextCI),
          matchAll
            "STARTING"
            AcceptRetry
            (dmrrsState . to toTextCI),
          matchStatus 500 AcceptRetry
        ]
    }

-- | Polls 'Network.AWS.MediaLive.DescribeChannel' every 5 seconds until a successful state is reached. An error is returned after 120 failed checks.
channelRunning :: Wait DescribeChannel
channelRunning =
  Wait
    { _waitName = "ChannelRunning",
      _waitAttempts = 120,
      _waitDelay = 5,
      _waitAcceptors =
        [ matchAll
            "RUNNING"
            AcceptSuccess
            (dcrrsState . to toTextCI),
          matchAll
            "STARTING"
            AcceptRetry
            (dcrrsState . to toTextCI),
          matchStatus 500 AcceptRetry
        ]
    }

-- | Polls 'Network.AWS.MediaLive.DescribeChannel' every 5 seconds until a successful state is reached. An error is returned after 84 failed checks.
channelDeleted :: Wait DescribeChannel
channelDeleted =
  Wait
    { _waitName = "ChannelDeleted",
      _waitAttempts = 84,
      _waitDelay = 5,
      _waitAcceptors =
        [ matchAll
            "DELETED"
            AcceptSuccess
            (dcrrsState . to toTextCI),
          matchAll
            "DELETING"
            AcceptRetry
            (dcrrsState . to toTextCI),
          matchStatus 500 AcceptRetry
        ]
    }

-- | Polls 'Network.AWS.MediaLive.DescribeInput' every 5 seconds until a successful state is reached. An error is returned after 20 failed checks.
inputDeleted :: Wait DescribeInput
inputDeleted =
  Wait
    { _waitName = "InputDeleted",
      _waitAttempts = 20,
      _waitDelay = 5,
      _waitAcceptors =
        [ matchAll
            "DELETED"
            AcceptSuccess
            (drsState . to toTextCI),
          matchAll
            "DELETING"
            AcceptRetry
            (drsState . to toTextCI),
          matchStatus 500 AcceptRetry
        ]
    }

-- | Polls 'Network.AWS.MediaLive.DescribeInput' every 5 seconds until a successful state is reached. An error is returned after 20 failed checks.
inputAttached :: Wait DescribeInput
inputAttached =
  Wait
    { _waitName = "InputAttached",
      _waitAttempts = 20,
      _waitDelay = 5,
      _waitAcceptors =
        [ matchAll
            "ATTACHED"
            AcceptSuccess
            (drsState . to toTextCI),
          matchAll
            "DETACHED"
            AcceptRetry
            (drsState . to toTextCI),
          matchStatus 500 AcceptRetry
        ]
    }

-- | Polls 'Network.AWS.MediaLive.DescribeMultiplex' every 5 seconds until a successful state is reached. An error is returned after 28 failed checks.
multiplexStopped :: Wait DescribeMultiplex
multiplexStopped =
  Wait
    { _waitName = "MultiplexStopped",
      _waitAttempts = 28,
      _waitDelay = 5,
      _waitAcceptors =
        [ matchAll
            "IDLE"
            AcceptSuccess
            (dmrrsState . to toTextCI),
          matchAll
            "STOPPING"
            AcceptRetry
            (dmrrsState . to toTextCI),
          matchStatus 500 AcceptRetry
        ]
    }

-- | Polls 'Network.AWS.MediaLive.DescribeChannel' every 3 seconds until a successful state is reached. An error is returned after 5 failed checks.
channelCreated :: Wait DescribeChannel
channelCreated =
  Wait
    { _waitName = "ChannelCreated",
      _waitAttempts = 5,
      _waitDelay = 3,
      _waitAcceptors =
        [ matchAll
            "IDLE"
            AcceptSuccess
            (dcrrsState . to toTextCI),
          matchAll
            "CREATING"
            AcceptRetry
            (dcrrsState . to toTextCI),
          matchStatus 500 AcceptRetry,
          matchAll
            "CREATE_FAILED"
            AcceptFailure
            (dcrrsState . to toTextCI)
        ]
    }

-- | Polls 'Network.AWS.MediaLive.DescribeMultiplex' every 3 seconds until a successful state is reached. An error is returned after 5 failed checks.
multiplexCreated :: Wait DescribeMultiplex
multiplexCreated =
  Wait
    { _waitName = "MultiplexCreated",
      _waitAttempts = 5,
      _waitDelay = 3,
      _waitAcceptors =
        [ matchAll
            "IDLE"
            AcceptSuccess
            (dmrrsState . to toTextCI),
          matchAll
            "CREATING"
            AcceptRetry
            (dmrrsState . to toTextCI),
          matchStatus 500 AcceptRetry,
          matchAll
            "CREATE_FAILED"
            AcceptFailure
            (dmrrsState . to toTextCI)
        ]
    }

-- | Polls 'Network.AWS.MediaLive.DescribeInput' every 5 seconds until a successful state is reached. An error is returned after 84 failed checks.
inputDetached :: Wait DescribeInput
inputDetached =
  Wait
    { _waitName = "InputDetached",
      _waitAttempts = 84,
      _waitDelay = 5,
      _waitAcceptors =
        [ matchAll
            "DETACHED"
            AcceptSuccess
            (drsState . to toTextCI),
          matchAll
            "CREATING"
            AcceptRetry
            (drsState . to toTextCI),
          matchAll
            "ATTACHED"
            AcceptRetry
            (drsState . to toTextCI),
          matchStatus 500 AcceptRetry
        ]
    }

-- | Polls 'Network.AWS.MediaLive.DescribeMultiplex' every 5 seconds until a successful state is reached. An error is returned after 20 failed checks.
multiplexDeleted :: Wait DescribeMultiplex
multiplexDeleted =
  Wait
    { _waitName = "MultiplexDeleted",
      _waitAttempts = 20,
      _waitDelay = 5,
      _waitAcceptors =
        [ matchAll
            "DELETED"
            AcceptSuccess
            (dmrrsState . to toTextCI),
          matchAll
            "DELETING"
            AcceptRetry
            (dmrrsState . to toTextCI),
          matchStatus 500 AcceptRetry
        ]
    }

-- | Polls 'Network.AWS.MediaLive.DescribeChannel' every 5 seconds until a successful state is reached. An error is returned after 60 failed checks.
channelStopped :: Wait DescribeChannel
channelStopped =
  Wait
    { _waitName = "ChannelStopped",
      _waitAttempts = 60,
      _waitDelay = 5,
      _waitAcceptors =
        [ matchAll
            "IDLE"
            AcceptSuccess
            (dcrrsState . to toTextCI),
          matchAll
            "STOPPING"
            AcceptRetry
            (dcrrsState . to toTextCI),
          matchStatus 500 AcceptRetry
        ]
    }
