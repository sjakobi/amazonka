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
-- Module      : Network.AWS.CodePipeline.Types.WebhookAuthenticationType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodePipeline.Types.WebhookAuthenticationType
  ( WebhookAuthenticationType
      ( ..,
        WebhookAuthenticationTypeGITHUBHMAC,
        WebhookAuthenticationTypeIP,
        WebhookAuthenticationTypeUNAUTHENTICATED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype WebhookAuthenticationType = WebhookAuthenticationType'
  { fromWebhookAuthenticationType ::
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

pattern WebhookAuthenticationTypeGITHUBHMAC :: WebhookAuthenticationType
pattern WebhookAuthenticationTypeGITHUBHMAC = WebhookAuthenticationType' "GITHUB_HMAC"

pattern WebhookAuthenticationTypeIP :: WebhookAuthenticationType
pattern WebhookAuthenticationTypeIP = WebhookAuthenticationType' "IP"

pattern WebhookAuthenticationTypeUNAUTHENTICATED :: WebhookAuthenticationType
pattern WebhookAuthenticationTypeUNAUTHENTICATED = WebhookAuthenticationType' "UNAUTHENTICATED"

{-# COMPLETE
  WebhookAuthenticationTypeGITHUBHMAC,
  WebhookAuthenticationTypeIP,
  WebhookAuthenticationTypeUNAUTHENTICATED,
  WebhookAuthenticationType'
  #-}

instance Prelude.FromText WebhookAuthenticationType where
  parser = WebhookAuthenticationType' Prelude.<$> Prelude.takeText

instance Prelude.ToText WebhookAuthenticationType where
  toText (WebhookAuthenticationType' x) = x

instance Prelude.Hashable WebhookAuthenticationType

instance Prelude.NFData WebhookAuthenticationType

instance Prelude.ToByteString WebhookAuthenticationType

instance Prelude.ToQuery WebhookAuthenticationType

instance Prelude.ToHeader WebhookAuthenticationType

instance Prelude.ToJSON WebhookAuthenticationType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON WebhookAuthenticationType where
  parseJSON = Prelude.parseJSONText "WebhookAuthenticationType"
