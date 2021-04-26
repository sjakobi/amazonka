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
-- Module      : Network.AWS.RDS.Types.TargetState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDS.Types.TargetState
  ( TargetState
      ( ..,
        TargetStateAVAILABLE,
        TargetStateREGISTERING,
        TargetStateUNAVAILABLE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype TargetState = TargetState'
  { fromTargetState ::
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

pattern TargetStateAVAILABLE :: TargetState
pattern TargetStateAVAILABLE = TargetState' "AVAILABLE"

pattern TargetStateREGISTERING :: TargetState
pattern TargetStateREGISTERING = TargetState' "REGISTERING"

pattern TargetStateUNAVAILABLE :: TargetState
pattern TargetStateUNAVAILABLE = TargetState' "UNAVAILABLE"

{-# COMPLETE
  TargetStateAVAILABLE,
  TargetStateREGISTERING,
  TargetStateUNAVAILABLE,
  TargetState'
  #-}

instance Prelude.FromText TargetState where
  parser = TargetState' Prelude.<$> Prelude.takeText

instance Prelude.ToText TargetState where
  toText (TargetState' x) = x

instance Prelude.Hashable TargetState

instance Prelude.NFData TargetState

instance Prelude.ToByteString TargetState

instance Prelude.ToQuery TargetState

instance Prelude.ToHeader TargetState

instance Prelude.FromXML TargetState where
  parseXML = Prelude.parseXMLText "TargetState"
