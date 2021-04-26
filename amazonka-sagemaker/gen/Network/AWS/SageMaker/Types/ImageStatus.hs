{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
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
        ImageStatusCREATED,
        ImageStatusCREATEFAILED,
        ImageStatusCREATING,
        ImageStatusDELETEFAILED,
        ImageStatusDELETING,
        ImageStatusUPDATEFAILED,
        ImageStatusUPDATING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ImageStatus = ImageStatus'
  { fromImageStatus ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern ImageStatusCREATED :: ImageStatus
pattern ImageStatusCREATED = ImageStatus' "CREATED"

pattern ImageStatusCREATEFAILED :: ImageStatus
pattern ImageStatusCREATEFAILED = ImageStatus' "CREATE_FAILED"

pattern ImageStatusCREATING :: ImageStatus
pattern ImageStatusCREATING = ImageStatus' "CREATING"

pattern ImageStatusDELETEFAILED :: ImageStatus
pattern ImageStatusDELETEFAILED = ImageStatus' "DELETE_FAILED"

pattern ImageStatusDELETING :: ImageStatus
pattern ImageStatusDELETING = ImageStatus' "DELETING"

pattern ImageStatusUPDATEFAILED :: ImageStatus
pattern ImageStatusUPDATEFAILED = ImageStatus' "UPDATE_FAILED"

pattern ImageStatusUPDATING :: ImageStatus
pattern ImageStatusUPDATING = ImageStatus' "UPDATING"

{-# COMPLETE
  ImageStatusCREATED,
  ImageStatusCREATEFAILED,
  ImageStatusCREATING,
  ImageStatusDELETEFAILED,
  ImageStatusDELETING,
  ImageStatusUPDATEFAILED,
  ImageStatusUPDATING,
  ImageStatus'
  #-}

instance Prelude.FromText ImageStatus where
  parser = ImageStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ImageStatus where
  toText (ImageStatus' x) = x

instance Prelude.Hashable ImageStatus

instance Prelude.NFData ImageStatus

instance Prelude.ToByteString ImageStatus

instance Prelude.ToQuery ImageStatus

instance Prelude.ToHeader ImageStatus

instance Prelude.FromJSON ImageStatus where
  parseJSON = Prelude.parseJSONText "ImageStatus"
