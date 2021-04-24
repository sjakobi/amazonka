{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.Transition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.Transition where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.S3.Internal
import Network.AWS.S3.Types.TransitionStorageClass

-- | Specifies when an object transitions to a specified storage class. For more information about Amazon S3 lifecycle configuration rules, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/lifecycle-transition-general-considerations.html Transitioning Objects Using Amazon S3 Lifecycle> in the /Amazon Simple Storage Service Developer Guide/ .
--
--
--
-- /See:/ 'transition' smart constructor.
data Transition = Transition'
  { _tDays :: !(Maybe Int),
    _tStorageClass :: !(Maybe TransitionStorageClass),
    _tDate :: !(Maybe ISO8601)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Transition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tDays' - Indicates the number of days after creation when objects are transitioned to the specified storage class. The value must be a positive integer.
--
-- * 'tStorageClass' - The storage class to which you want the object to transition.
--
-- * 'tDate' - Indicates when objects are transitioned to the specified storage class. The date value must be in ISO 8601 format. The time is always midnight UTC.
transition ::
  Transition
transition =
  Transition'
    { _tDays = Nothing,
      _tStorageClass = Nothing,
      _tDate = Nothing
    }

-- | Indicates the number of days after creation when objects are transitioned to the specified storage class. The value must be a positive integer.
tDays :: Lens' Transition (Maybe Int)
tDays = lens _tDays (\s a -> s {_tDays = a})

-- | The storage class to which you want the object to transition.
tStorageClass :: Lens' Transition (Maybe TransitionStorageClass)
tStorageClass = lens _tStorageClass (\s a -> s {_tStorageClass = a})

-- | Indicates when objects are transitioned to the specified storage class. The date value must be in ISO 8601 format. The time is always midnight UTC.
tDate :: Lens' Transition (Maybe UTCTime)
tDate = lens _tDate (\s a -> s {_tDate = a}) . mapping _Time

instance FromXML Transition where
  parseXML x =
    Transition'
      <$> (x .@? "Days")
      <*> (x .@? "StorageClass")
      <*> (x .@? "Date")

instance Hashable Transition

instance NFData Transition

instance ToXML Transition where
  toXML Transition' {..} =
    mconcat
      [ "Days" @= _tDays,
        "StorageClass" @= _tStorageClass,
        "Date" @= _tDate
      ]
