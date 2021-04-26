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
-- Module      : Network.AWS.SageMaker.Types.ImageVersionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ImageVersionStatus
  ( ImageVersionStatus
      ( ..,
        ImageVersionStatusCREATED,
        ImageVersionStatusCREATEFAILED,
        ImageVersionStatusCREATING,
        ImageVersionStatusDELETEFAILED,
        ImageVersionStatusDELETING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ImageVersionStatus = ImageVersionStatus'
  { fromImageVersionStatus ::
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

pattern ImageVersionStatusCREATED :: ImageVersionStatus
pattern ImageVersionStatusCREATED = ImageVersionStatus' "CREATED"

pattern ImageVersionStatusCREATEFAILED :: ImageVersionStatus
pattern ImageVersionStatusCREATEFAILED = ImageVersionStatus' "CREATE_FAILED"

pattern ImageVersionStatusCREATING :: ImageVersionStatus
pattern ImageVersionStatusCREATING = ImageVersionStatus' "CREATING"

pattern ImageVersionStatusDELETEFAILED :: ImageVersionStatus
pattern ImageVersionStatusDELETEFAILED = ImageVersionStatus' "DELETE_FAILED"

pattern ImageVersionStatusDELETING :: ImageVersionStatus
pattern ImageVersionStatusDELETING = ImageVersionStatus' "DELETING"

{-# COMPLETE
  ImageVersionStatusCREATED,
  ImageVersionStatusCREATEFAILED,
  ImageVersionStatusCREATING,
  ImageVersionStatusDELETEFAILED,
  ImageVersionStatusDELETING,
  ImageVersionStatus'
  #-}

instance Prelude.FromText ImageVersionStatus where
  parser = ImageVersionStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ImageVersionStatus where
  toText (ImageVersionStatus' x) = x

instance Prelude.Hashable ImageVersionStatus

instance Prelude.NFData ImageVersionStatus

instance Prelude.ToByteString ImageVersionStatus

instance Prelude.ToQuery ImageVersionStatus

instance Prelude.ToHeader ImageVersionStatus

instance Prelude.FromJSON ImageVersionStatus where
  parseJSON = Prelude.parseJSONText "ImageVersionStatus"
