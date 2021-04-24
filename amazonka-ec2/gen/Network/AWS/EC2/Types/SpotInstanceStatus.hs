{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.SpotInstanceStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.SpotInstanceStatus where

import Network.AWS.EC2.Internal
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes the status of a Spot Instance request.
--
--
--
-- /See:/ 'spotInstanceStatus' smart constructor.
data SpotInstanceStatus = SpotInstanceStatus'
  { _sisMessage ::
      !(Maybe Text),
    _sisCode :: !(Maybe Text),
    _sisUpdateTime ::
      !(Maybe ISO8601)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SpotInstanceStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sisMessage' - The description for the status code.
--
-- * 'sisCode' - The status code. For a list of status codes, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-bid-status.html#spot-instance-bid-status-understand Spot status codes> in the /Amazon EC2 User Guide for Linux Instances/ .
--
-- * 'sisUpdateTime' - The date and time of the most recent status update, in UTC format (for example, /YYYY/ -/MM/ -/DD/ T/HH/ :/MM/ :/SS/ Z).
spotInstanceStatus ::
  SpotInstanceStatus
spotInstanceStatus =
  SpotInstanceStatus'
    { _sisMessage = Nothing,
      _sisCode = Nothing,
      _sisUpdateTime = Nothing
    }

-- | The description for the status code.
sisMessage :: Lens' SpotInstanceStatus (Maybe Text)
sisMessage = lens _sisMessage (\s a -> s {_sisMessage = a})

-- | The status code. For a list of status codes, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-bid-status.html#spot-instance-bid-status-understand Spot status codes> in the /Amazon EC2 User Guide for Linux Instances/ .
sisCode :: Lens' SpotInstanceStatus (Maybe Text)
sisCode = lens _sisCode (\s a -> s {_sisCode = a})

-- | The date and time of the most recent status update, in UTC format (for example, /YYYY/ -/MM/ -/DD/ T/HH/ :/MM/ :/SS/ Z).
sisUpdateTime :: Lens' SpotInstanceStatus (Maybe UTCTime)
sisUpdateTime = lens _sisUpdateTime (\s a -> s {_sisUpdateTime = a}) . mapping _Time

instance FromXML SpotInstanceStatus where
  parseXML x =
    SpotInstanceStatus'
      <$> (x .@? "message")
      <*> (x .@? "code")
      <*> (x .@? "updateTime")

instance Hashable SpotInstanceStatus

instance NFData SpotInstanceStatus
