{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ImageVersionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ImageVersionStatus
  ( ImageVersionStatus
      ( ..,
        IVSCreateFailed,
        IVSCreated,
        IVSCreating,
        IVSDeleteFailed,
        IVSDeleting
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ImageVersionStatus
  = ImageVersionStatus'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern IVSCreateFailed :: ImageVersionStatus
pattern IVSCreateFailed = ImageVersionStatus' "CREATE_FAILED"

pattern IVSCreated :: ImageVersionStatus
pattern IVSCreated = ImageVersionStatus' "CREATED"

pattern IVSCreating :: ImageVersionStatus
pattern IVSCreating = ImageVersionStatus' "CREATING"

pattern IVSDeleteFailed :: ImageVersionStatus
pattern IVSDeleteFailed = ImageVersionStatus' "DELETE_FAILED"

pattern IVSDeleting :: ImageVersionStatus
pattern IVSDeleting = ImageVersionStatus' "DELETING"

{-# COMPLETE
  IVSCreateFailed,
  IVSCreated,
  IVSCreating,
  IVSDeleteFailed,
  IVSDeleting,
  ImageVersionStatus'
  #-}

instance FromText ImageVersionStatus where
  parser = (ImageVersionStatus' . mk) <$> takeText

instance ToText ImageVersionStatus where
  toText (ImageVersionStatus' ci) = original ci

instance Hashable ImageVersionStatus

instance NFData ImageVersionStatus

instance ToByteString ImageVersionStatus

instance ToQuery ImageVersionStatus

instance ToHeader ImageVersionStatus

instance FromJSON ImageVersionStatus where
  parseJSON = parseJSONText "ImageVersionStatus"
