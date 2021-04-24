{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.LifecycleExpiration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.LifecycleExpiration where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.S3.Internal

-- | Container for the expiration for the lifecycle of the object.
--
--
--
-- /See:/ 'lifecycleExpiration' smart constructor.
data LifecycleExpiration = LifecycleExpiration'
  { _leDays ::
      !(Maybe Int),
    _leExpiredObjectDeleteMarker ::
      !(Maybe Bool),
    _leDate :: !(Maybe ISO8601)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'LifecycleExpiration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'leDays' - Indicates the lifetime, in days, of the objects that are subject to the rule. The value must be a non-zero positive integer.
--
-- * 'leExpiredObjectDeleteMarker' - Indicates whether Amazon S3 will remove a delete marker with no noncurrent versions. If set to true, the delete marker will be expired; if set to false the policy takes no action. This cannot be specified with Days or Date in a Lifecycle Expiration Policy.
--
-- * 'leDate' - Indicates at what date the object is to be moved or deleted. Should be in GMT ISO 8601 Format.
lifecycleExpiration ::
  LifecycleExpiration
lifecycleExpiration =
  LifecycleExpiration'
    { _leDays = Nothing,
      _leExpiredObjectDeleteMarker = Nothing,
      _leDate = Nothing
    }

-- | Indicates the lifetime, in days, of the objects that are subject to the rule. The value must be a non-zero positive integer.
leDays :: Lens' LifecycleExpiration (Maybe Int)
leDays = lens _leDays (\s a -> s {_leDays = a})

-- | Indicates whether Amazon S3 will remove a delete marker with no noncurrent versions. If set to true, the delete marker will be expired; if set to false the policy takes no action. This cannot be specified with Days or Date in a Lifecycle Expiration Policy.
leExpiredObjectDeleteMarker :: Lens' LifecycleExpiration (Maybe Bool)
leExpiredObjectDeleteMarker = lens _leExpiredObjectDeleteMarker (\s a -> s {_leExpiredObjectDeleteMarker = a})

-- | Indicates at what date the object is to be moved or deleted. Should be in GMT ISO 8601 Format.
leDate :: Lens' LifecycleExpiration (Maybe UTCTime)
leDate = lens _leDate (\s a -> s {_leDate = a}) . mapping _Time

instance FromXML LifecycleExpiration where
  parseXML x =
    LifecycleExpiration'
      <$> (x .@? "Days")
      <*> (x .@? "ExpiredObjectDeleteMarker")
      <*> (x .@? "Date")

instance Hashable LifecycleExpiration

instance NFData LifecycleExpiration

instance ToXML LifecycleExpiration where
  toXML LifecycleExpiration' {..} =
    mconcat
      [ "Days" @= _leDays,
        "ExpiredObjectDeleteMarker"
          @= _leExpiredObjectDeleteMarker,
        "Date" @= _leDate
      ]
