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
-- Module      : Network.AWS.CodeBuild.Types.WebhookBuildType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeBuild.Types.WebhookBuildType
  ( WebhookBuildType
      ( ..,
        WebhookBuildTypeBUILD,
        WebhookBuildTypeBUILDBATCH
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype WebhookBuildType = WebhookBuildType'
  { fromWebhookBuildType ::
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

pattern WebhookBuildTypeBUILD :: WebhookBuildType
pattern WebhookBuildTypeBUILD = WebhookBuildType' "BUILD"

pattern WebhookBuildTypeBUILDBATCH :: WebhookBuildType
pattern WebhookBuildTypeBUILDBATCH = WebhookBuildType' "BUILD_BATCH"

{-# COMPLETE
  WebhookBuildTypeBUILD,
  WebhookBuildTypeBUILDBATCH,
  WebhookBuildType'
  #-}

instance Prelude.FromText WebhookBuildType where
  parser = WebhookBuildType' Prelude.<$> Prelude.takeText

instance Prelude.ToText WebhookBuildType where
  toText (WebhookBuildType' x) = x

instance Prelude.Hashable WebhookBuildType

instance Prelude.NFData WebhookBuildType

instance Prelude.ToByteString WebhookBuildType

instance Prelude.ToQuery WebhookBuildType

instance Prelude.ToHeader WebhookBuildType

instance Prelude.ToJSON WebhookBuildType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON WebhookBuildType where
  parseJSON = Prelude.parseJSONText "WebhookBuildType"
