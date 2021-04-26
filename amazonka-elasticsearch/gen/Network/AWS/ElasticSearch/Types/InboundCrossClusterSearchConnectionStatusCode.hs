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
-- Module      : Network.AWS.ElasticSearch.Types.InboundCrossClusterSearchConnectionStatusCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticSearch.Types.InboundCrossClusterSearchConnectionStatusCode
  ( InboundCrossClusterSearchConnectionStatusCode
      ( ..,
        InboundCrossClusterSearchConnectionStatusCodeAPPROVED,
        InboundCrossClusterSearchConnectionStatusCodeDELETED,
        InboundCrossClusterSearchConnectionStatusCodeDELETING,
        InboundCrossClusterSearchConnectionStatusCodePENDINGACCEPTANCE,
        InboundCrossClusterSearchConnectionStatusCodeREJECTED,
        InboundCrossClusterSearchConnectionStatusCodeREJECTING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype InboundCrossClusterSearchConnectionStatusCode = InboundCrossClusterSearchConnectionStatusCode'
  { fromInboundCrossClusterSearchConnectionStatusCode ::
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

pattern InboundCrossClusterSearchConnectionStatusCodeAPPROVED :: InboundCrossClusterSearchConnectionStatusCode
pattern InboundCrossClusterSearchConnectionStatusCodeAPPROVED = InboundCrossClusterSearchConnectionStatusCode' "APPROVED"

pattern InboundCrossClusterSearchConnectionStatusCodeDELETED :: InboundCrossClusterSearchConnectionStatusCode
pattern InboundCrossClusterSearchConnectionStatusCodeDELETED = InboundCrossClusterSearchConnectionStatusCode' "DELETED"

pattern InboundCrossClusterSearchConnectionStatusCodeDELETING :: InboundCrossClusterSearchConnectionStatusCode
pattern InboundCrossClusterSearchConnectionStatusCodeDELETING = InboundCrossClusterSearchConnectionStatusCode' "DELETING"

pattern InboundCrossClusterSearchConnectionStatusCodePENDINGACCEPTANCE :: InboundCrossClusterSearchConnectionStatusCode
pattern InboundCrossClusterSearchConnectionStatusCodePENDINGACCEPTANCE = InboundCrossClusterSearchConnectionStatusCode' "PENDING_ACCEPTANCE"

pattern InboundCrossClusterSearchConnectionStatusCodeREJECTED :: InboundCrossClusterSearchConnectionStatusCode
pattern InboundCrossClusterSearchConnectionStatusCodeREJECTED = InboundCrossClusterSearchConnectionStatusCode' "REJECTED"

pattern InboundCrossClusterSearchConnectionStatusCodeREJECTING :: InboundCrossClusterSearchConnectionStatusCode
pattern InboundCrossClusterSearchConnectionStatusCodeREJECTING = InboundCrossClusterSearchConnectionStatusCode' "REJECTING"

{-# COMPLETE
  InboundCrossClusterSearchConnectionStatusCodeAPPROVED,
  InboundCrossClusterSearchConnectionStatusCodeDELETED,
  InboundCrossClusterSearchConnectionStatusCodeDELETING,
  InboundCrossClusterSearchConnectionStatusCodePENDINGACCEPTANCE,
  InboundCrossClusterSearchConnectionStatusCodeREJECTED,
  InboundCrossClusterSearchConnectionStatusCodeREJECTING,
  InboundCrossClusterSearchConnectionStatusCode'
  #-}

instance Prelude.FromText InboundCrossClusterSearchConnectionStatusCode where
  parser = InboundCrossClusterSearchConnectionStatusCode' Prelude.<$> Prelude.takeText

instance Prelude.ToText InboundCrossClusterSearchConnectionStatusCode where
  toText (InboundCrossClusterSearchConnectionStatusCode' x) = x

instance Prelude.Hashable InboundCrossClusterSearchConnectionStatusCode

instance Prelude.NFData InboundCrossClusterSearchConnectionStatusCode

instance Prelude.ToByteString InboundCrossClusterSearchConnectionStatusCode

instance Prelude.ToQuery InboundCrossClusterSearchConnectionStatusCode

instance Prelude.ToHeader InboundCrossClusterSearchConnectionStatusCode

instance Prelude.FromJSON InboundCrossClusterSearchConnectionStatusCode where
  parseJSON = Prelude.parseJSONText "InboundCrossClusterSearchConnectionStatusCode"
