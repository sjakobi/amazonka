{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ImageStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ImageStatus
  ( ImageStatus
      ( ..,
        ISCreateFailed,
        ISCreated,
        ISCreating,
        ISDeleteFailed,
        ISDeleting,
        ISUpdateFailed,
        ISUpdating
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ImageStatus = ImageStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ISCreateFailed :: ImageStatus
pattern ISCreateFailed = ImageStatus' "CREATE_FAILED"

pattern ISCreated :: ImageStatus
pattern ISCreated = ImageStatus' "CREATED"

pattern ISCreating :: ImageStatus
pattern ISCreating = ImageStatus' "CREATING"

pattern ISDeleteFailed :: ImageStatus
pattern ISDeleteFailed = ImageStatus' "DELETE_FAILED"

pattern ISDeleting :: ImageStatus
pattern ISDeleting = ImageStatus' "DELETING"

pattern ISUpdateFailed :: ImageStatus
pattern ISUpdateFailed = ImageStatus' "UPDATE_FAILED"

pattern ISUpdating :: ImageStatus
pattern ISUpdating = ImageStatus' "UPDATING"

{-# COMPLETE
  ISCreateFailed,
  ISCreated,
  ISCreating,
  ISDeleteFailed,
  ISDeleting,
  ISUpdateFailed,
  ISUpdating,
  ImageStatus'
  #-}

instance FromText ImageStatus where
  parser = (ImageStatus' . mk) <$> takeText

instance ToText ImageStatus where
  toText (ImageStatus' ci) = original ci

instance Hashable ImageStatus

instance NFData ImageStatus

instance ToByteString ImageStatus

instance ToQuery ImageStatus

instance ToHeader ImageStatus

instance FromJSON ImageStatus where
  parseJSON = parseJSONText "ImageStatus"
