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
-- Module      : Network.AWS.ElasticSearch.Types.OutboundCrossClusterSearchConnectionStatusCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticSearch.Types.OutboundCrossClusterSearchConnectionStatusCode
  ( OutboundCrossClusterSearchConnectionStatusCode
      ( ..,
        OutboundCrossClusterSearchConnectionStatusCodeACTIVE,
        OutboundCrossClusterSearchConnectionStatusCodeDELETED,
        OutboundCrossClusterSearchConnectionStatusCodeDELETING,
        OutboundCrossClusterSearchConnectionStatusCodePENDINGACCEPTANCE,
        OutboundCrossClusterSearchConnectionStatusCodePROVISIONING,
        OutboundCrossClusterSearchConnectionStatusCodeREJECTED,
        OutboundCrossClusterSearchConnectionStatusCodeVALIDATING,
        OutboundCrossClusterSearchConnectionStatusCodeVALIDATIONFAILED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype OutboundCrossClusterSearchConnectionStatusCode = OutboundCrossClusterSearchConnectionStatusCode'
  { fromOutboundCrossClusterSearchConnectionStatusCode ::
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

pattern OutboundCrossClusterSearchConnectionStatusCodeACTIVE :: OutboundCrossClusterSearchConnectionStatusCode
pattern OutboundCrossClusterSearchConnectionStatusCodeACTIVE = OutboundCrossClusterSearchConnectionStatusCode' "ACTIVE"

pattern OutboundCrossClusterSearchConnectionStatusCodeDELETED :: OutboundCrossClusterSearchConnectionStatusCode
pattern OutboundCrossClusterSearchConnectionStatusCodeDELETED = OutboundCrossClusterSearchConnectionStatusCode' "DELETED"

pattern OutboundCrossClusterSearchConnectionStatusCodeDELETING :: OutboundCrossClusterSearchConnectionStatusCode
pattern OutboundCrossClusterSearchConnectionStatusCodeDELETING = OutboundCrossClusterSearchConnectionStatusCode' "DELETING"

pattern OutboundCrossClusterSearchConnectionStatusCodePENDINGACCEPTANCE :: OutboundCrossClusterSearchConnectionStatusCode
pattern OutboundCrossClusterSearchConnectionStatusCodePENDINGACCEPTANCE = OutboundCrossClusterSearchConnectionStatusCode' "PENDING_ACCEPTANCE"

pattern OutboundCrossClusterSearchConnectionStatusCodePROVISIONING :: OutboundCrossClusterSearchConnectionStatusCode
pattern OutboundCrossClusterSearchConnectionStatusCodePROVISIONING = OutboundCrossClusterSearchConnectionStatusCode' "PROVISIONING"

pattern OutboundCrossClusterSearchConnectionStatusCodeREJECTED :: OutboundCrossClusterSearchConnectionStatusCode
pattern OutboundCrossClusterSearchConnectionStatusCodeREJECTED = OutboundCrossClusterSearchConnectionStatusCode' "REJECTED"

pattern OutboundCrossClusterSearchConnectionStatusCodeVALIDATING :: OutboundCrossClusterSearchConnectionStatusCode
pattern OutboundCrossClusterSearchConnectionStatusCodeVALIDATING = OutboundCrossClusterSearchConnectionStatusCode' "VALIDATING"

pattern OutboundCrossClusterSearchConnectionStatusCodeVALIDATIONFAILED :: OutboundCrossClusterSearchConnectionStatusCode
pattern OutboundCrossClusterSearchConnectionStatusCodeVALIDATIONFAILED = OutboundCrossClusterSearchConnectionStatusCode' "VALIDATION_FAILED"

{-# COMPLETE
  OutboundCrossClusterSearchConnectionStatusCodeACTIVE,
  OutboundCrossClusterSearchConnectionStatusCodeDELETED,
  OutboundCrossClusterSearchConnectionStatusCodeDELETING,
  OutboundCrossClusterSearchConnectionStatusCodePENDINGACCEPTANCE,
  OutboundCrossClusterSearchConnectionStatusCodePROVISIONING,
  OutboundCrossClusterSearchConnectionStatusCodeREJECTED,
  OutboundCrossClusterSearchConnectionStatusCodeVALIDATING,
  OutboundCrossClusterSearchConnectionStatusCodeVALIDATIONFAILED,
  OutboundCrossClusterSearchConnectionStatusCode'
  #-}

instance Prelude.FromText OutboundCrossClusterSearchConnectionStatusCode where
  parser = OutboundCrossClusterSearchConnectionStatusCode' Prelude.<$> Prelude.takeText

instance Prelude.ToText OutboundCrossClusterSearchConnectionStatusCode where
  toText (OutboundCrossClusterSearchConnectionStatusCode' x) = x

instance Prelude.Hashable OutboundCrossClusterSearchConnectionStatusCode

instance Prelude.NFData OutboundCrossClusterSearchConnectionStatusCode

instance Prelude.ToByteString OutboundCrossClusterSearchConnectionStatusCode

instance Prelude.ToQuery OutboundCrossClusterSearchConnectionStatusCode

instance Prelude.ToHeader OutboundCrossClusterSearchConnectionStatusCode

instance Prelude.FromJSON OutboundCrossClusterSearchConnectionStatusCode where
  parseJSON = Prelude.parseJSONText "OutboundCrossClusterSearchConnectionStatusCode"
