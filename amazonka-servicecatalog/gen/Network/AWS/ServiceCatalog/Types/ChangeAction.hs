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
-- Module      : Network.AWS.ServiceCatalog.Types.ChangeAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServiceCatalog.Types.ChangeAction
  ( ChangeAction
      ( ..,
        ChangeActionADD,
        ChangeActionMODIFY,
        ChangeActionREMOVE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ChangeAction = ChangeAction'
  { fromChangeAction ::
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

pattern ChangeActionADD :: ChangeAction
pattern ChangeActionADD = ChangeAction' "ADD"

pattern ChangeActionMODIFY :: ChangeAction
pattern ChangeActionMODIFY = ChangeAction' "MODIFY"

pattern ChangeActionREMOVE :: ChangeAction
pattern ChangeActionREMOVE = ChangeAction' "REMOVE"

{-# COMPLETE
  ChangeActionADD,
  ChangeActionMODIFY,
  ChangeActionREMOVE,
  ChangeAction'
  #-}

instance Prelude.FromText ChangeAction where
  parser = ChangeAction' Prelude.<$> Prelude.takeText

instance Prelude.ToText ChangeAction where
  toText (ChangeAction' x) = x

instance Prelude.Hashable ChangeAction

instance Prelude.NFData ChangeAction

instance Prelude.ToByteString ChangeAction

instance Prelude.ToQuery ChangeAction

instance Prelude.ToHeader ChangeAction

instance Prelude.FromJSON ChangeAction where
  parseJSON = Prelude.parseJSONText "ChangeAction"
