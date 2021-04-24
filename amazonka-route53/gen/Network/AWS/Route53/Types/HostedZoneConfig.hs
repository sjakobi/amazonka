{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Route53.Types.HostedZoneConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53.Types.HostedZoneConfig where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Route53.Internal

-- | A complex type that contains an optional comment about your hosted zone. If you don't want to specify a comment, omit both the @HostedZoneConfig@ and @Comment@ elements.
--
--
--
-- /See:/ 'hostedZoneConfig' smart constructor.
data HostedZoneConfig = HostedZoneConfig'
  { _hzcComment ::
      !(Maybe Text),
    _hzcPrivateZone :: !(Maybe Bool)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'HostedZoneConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hzcComment' - Any comments that you want to include about the hosted zone.
--
-- * 'hzcPrivateZone' - A value that indicates whether this is a private hosted zone.
hostedZoneConfig ::
  HostedZoneConfig
hostedZoneConfig =
  HostedZoneConfig'
    { _hzcComment = Nothing,
      _hzcPrivateZone = Nothing
    }

-- | Any comments that you want to include about the hosted zone.
hzcComment :: Lens' HostedZoneConfig (Maybe Text)
hzcComment = lens _hzcComment (\s a -> s {_hzcComment = a})

-- | A value that indicates whether this is a private hosted zone.
hzcPrivateZone :: Lens' HostedZoneConfig (Maybe Bool)
hzcPrivateZone = lens _hzcPrivateZone (\s a -> s {_hzcPrivateZone = a})

instance FromXML HostedZoneConfig where
  parseXML x =
    HostedZoneConfig'
      <$> (x .@? "Comment") <*> (x .@? "PrivateZone")

instance Hashable HostedZoneConfig

instance NFData HostedZoneConfig

instance ToXML HostedZoneConfig where
  toXML HostedZoneConfig' {..} =
    mconcat
      [ "Comment" @= _hzcComment,
        "PrivateZone" @= _hzcPrivateZone
      ]
