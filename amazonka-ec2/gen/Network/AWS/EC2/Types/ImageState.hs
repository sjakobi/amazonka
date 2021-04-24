{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.ImageState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ImageState
  ( ImageState
      ( ..,
        ISAvailable,
        ISDeregistered,
        ISError',
        ISFailed,
        ISInvalid,
        ISPending,
        ISTransient
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data ImageState = ImageState' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ISAvailable :: ImageState
pattern ISAvailable = ImageState' "available"

pattern ISDeregistered :: ImageState
pattern ISDeregistered = ImageState' "deregistered"

pattern ISError' :: ImageState
pattern ISError' = ImageState' "error"

pattern ISFailed :: ImageState
pattern ISFailed = ImageState' "failed"

pattern ISInvalid :: ImageState
pattern ISInvalid = ImageState' "invalid"

pattern ISPending :: ImageState
pattern ISPending = ImageState' "pending"

pattern ISTransient :: ImageState
pattern ISTransient = ImageState' "transient"

{-# COMPLETE
  ISAvailable,
  ISDeregistered,
  ISError',
  ISFailed,
  ISInvalid,
  ISPending,
  ISTransient,
  ImageState'
  #-}

instance FromText ImageState where
  parser = (ImageState' . mk) <$> takeText

instance ToText ImageState where
  toText (ImageState' ci) = original ci

instance Hashable ImageState

instance NFData ImageState

instance ToByteString ImageState

instance ToQuery ImageState

instance ToHeader ImageState

instance FromXML ImageState where
  parseXML = parseXMLText "ImageState"
