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
-- Module      : Network.AWS.CodeDeploy.Types.InstanceAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeDeploy.Types.InstanceAction
  ( InstanceAction
      ( ..,
        InstanceActionKEEPALIVE,
        InstanceActionTERMINATE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype InstanceAction = InstanceAction'
  { fromInstanceAction ::
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

pattern InstanceActionKEEPALIVE :: InstanceAction
pattern InstanceActionKEEPALIVE = InstanceAction' "KEEP_ALIVE"

pattern InstanceActionTERMINATE :: InstanceAction
pattern InstanceActionTERMINATE = InstanceAction' "TERMINATE"

{-# COMPLETE
  InstanceActionKEEPALIVE,
  InstanceActionTERMINATE,
  InstanceAction'
  #-}

instance Prelude.FromText InstanceAction where
  parser = InstanceAction' Prelude.<$> Prelude.takeText

instance Prelude.ToText InstanceAction where
  toText (InstanceAction' x) = x

instance Prelude.Hashable InstanceAction

instance Prelude.NFData InstanceAction

instance Prelude.ToByteString InstanceAction

instance Prelude.ToQuery InstanceAction

instance Prelude.ToHeader InstanceAction

instance Prelude.ToJSON InstanceAction where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON InstanceAction where
  parseJSON = Prelude.parseJSONText "InstanceAction"
