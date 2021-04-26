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
-- Module      : Network.AWS.CloudFormation.Types.ChangeAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.ChangeAction
  ( ChangeAction
      ( ..,
        ChangeActionAdd,
        ChangeActionDynamic,
        ChangeActionImport,
        ChangeActionModify,
        ChangeActionRemove
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

pattern ChangeActionAdd :: ChangeAction
pattern ChangeActionAdd = ChangeAction' "Add"

pattern ChangeActionDynamic :: ChangeAction
pattern ChangeActionDynamic = ChangeAction' "Dynamic"

pattern ChangeActionImport :: ChangeAction
pattern ChangeActionImport = ChangeAction' "Import"

pattern ChangeActionModify :: ChangeAction
pattern ChangeActionModify = ChangeAction' "Modify"

pattern ChangeActionRemove :: ChangeAction
pattern ChangeActionRemove = ChangeAction' "Remove"

{-# COMPLETE
  ChangeActionAdd,
  ChangeActionDynamic,
  ChangeActionImport,
  ChangeActionModify,
  ChangeActionRemove,
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

instance Prelude.FromXML ChangeAction where
  parseXML = Prelude.parseXMLText "ChangeAction"
