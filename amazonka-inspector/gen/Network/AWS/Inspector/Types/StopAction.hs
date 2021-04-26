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
-- Module      : Network.AWS.Inspector.Types.StopAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Inspector.Types.StopAction
  ( StopAction
      ( ..,
        StopActionSKIPEVALUATION,
        StopActionSTARTEVALUATION
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype StopAction = StopAction'
  { fromStopAction ::
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

pattern StopActionSKIPEVALUATION :: StopAction
pattern StopActionSKIPEVALUATION = StopAction' "SKIP_EVALUATION"

pattern StopActionSTARTEVALUATION :: StopAction
pattern StopActionSTARTEVALUATION = StopAction' "START_EVALUATION"

{-# COMPLETE
  StopActionSKIPEVALUATION,
  StopActionSTARTEVALUATION,
  StopAction'
  #-}

instance Prelude.FromText StopAction where
  parser = StopAction' Prelude.<$> Prelude.takeText

instance Prelude.ToText StopAction where
  toText (StopAction' x) = x

instance Prelude.Hashable StopAction

instance Prelude.NFData StopAction

instance Prelude.ToByteString StopAction

instance Prelude.ToQuery StopAction

instance Prelude.ToHeader StopAction

instance Prelude.ToJSON StopAction where
  toJSON = Prelude.toJSONText
