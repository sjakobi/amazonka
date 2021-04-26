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
-- Module      : Network.AWS.CodeBuild.Types.WebhookFilterType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeBuild.Types.WebhookFilterType
  ( WebhookFilterType
      ( ..,
        WebhookFilterTypeACTORACCOUNTID,
        WebhookFilterTypeBASEREF,
        WebhookFilterTypeCOMMITMESSAGE,
        WebhookFilterTypeEVENT,
        WebhookFilterTypeFILEPATH,
        WebhookFilterTypeHEADREF
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype WebhookFilterType = WebhookFilterType'
  { fromWebhookFilterType ::
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

pattern WebhookFilterTypeACTORACCOUNTID :: WebhookFilterType
pattern WebhookFilterTypeACTORACCOUNTID = WebhookFilterType' "ACTOR_ACCOUNT_ID"

pattern WebhookFilterTypeBASEREF :: WebhookFilterType
pattern WebhookFilterTypeBASEREF = WebhookFilterType' "BASE_REF"

pattern WebhookFilterTypeCOMMITMESSAGE :: WebhookFilterType
pattern WebhookFilterTypeCOMMITMESSAGE = WebhookFilterType' "COMMIT_MESSAGE"

pattern WebhookFilterTypeEVENT :: WebhookFilterType
pattern WebhookFilterTypeEVENT = WebhookFilterType' "EVENT"

pattern WebhookFilterTypeFILEPATH :: WebhookFilterType
pattern WebhookFilterTypeFILEPATH = WebhookFilterType' "FILE_PATH"

pattern WebhookFilterTypeHEADREF :: WebhookFilterType
pattern WebhookFilterTypeHEADREF = WebhookFilterType' "HEAD_REF"

{-# COMPLETE
  WebhookFilterTypeACTORACCOUNTID,
  WebhookFilterTypeBASEREF,
  WebhookFilterTypeCOMMITMESSAGE,
  WebhookFilterTypeEVENT,
  WebhookFilterTypeFILEPATH,
  WebhookFilterTypeHEADREF,
  WebhookFilterType'
  #-}

instance Prelude.FromText WebhookFilterType where
  parser = WebhookFilterType' Prelude.<$> Prelude.takeText

instance Prelude.ToText WebhookFilterType where
  toText (WebhookFilterType' x) = x

instance Prelude.Hashable WebhookFilterType

instance Prelude.NFData WebhookFilterType

instance Prelude.ToByteString WebhookFilterType

instance Prelude.ToQuery WebhookFilterType

instance Prelude.ToHeader WebhookFilterType

instance Prelude.ToJSON WebhookFilterType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON WebhookFilterType where
  parseJSON = Prelude.parseJSONText "WebhookFilterType"
