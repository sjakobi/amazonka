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
-- Module      : Network.AWS.CostExplorer.Types.Context
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CostExplorer.Types.Context
  ( Context
      ( ..,
        ContextCOSTANDUSAGE,
        ContextRESERVATIONS,
        ContextSAVINGSPLANS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype Context = Context'
  { fromContext ::
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

pattern ContextCOSTANDUSAGE :: Context
pattern ContextCOSTANDUSAGE = Context' "COST_AND_USAGE"

pattern ContextRESERVATIONS :: Context
pattern ContextRESERVATIONS = Context' "RESERVATIONS"

pattern ContextSAVINGSPLANS :: Context
pattern ContextSAVINGSPLANS = Context' "SAVINGS_PLANS"

{-# COMPLETE
  ContextCOSTANDUSAGE,
  ContextRESERVATIONS,
  ContextSAVINGSPLANS,
  Context'
  #-}

instance Prelude.FromText Context where
  parser = Context' Prelude.<$> Prelude.takeText

instance Prelude.ToText Context where
  toText (Context' x) = x

instance Prelude.Hashable Context

instance Prelude.NFData Context

instance Prelude.ToByteString Context

instance Prelude.ToQuery Context

instance Prelude.ToHeader Context

instance Prelude.ToJSON Context where
  toJSON = Prelude.toJSONText
