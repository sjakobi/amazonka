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
-- Module      : Network.AWS.WorkMail.Types.RetentionAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkMail.Types.RetentionAction
  ( RetentionAction
      ( ..,
        RetentionActionDELETE,
        RetentionActionNONE,
        RetentionActionPERMANENTLYDELETE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype RetentionAction = RetentionAction'
  { fromRetentionAction ::
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

pattern RetentionActionDELETE :: RetentionAction
pattern RetentionActionDELETE = RetentionAction' "DELETE"

pattern RetentionActionNONE :: RetentionAction
pattern RetentionActionNONE = RetentionAction' "NONE"

pattern RetentionActionPERMANENTLYDELETE :: RetentionAction
pattern RetentionActionPERMANENTLYDELETE = RetentionAction' "PERMANENTLY_DELETE"

{-# COMPLETE
  RetentionActionDELETE,
  RetentionActionNONE,
  RetentionActionPERMANENTLYDELETE,
  RetentionAction'
  #-}

instance Prelude.FromText RetentionAction where
  parser = RetentionAction' Prelude.<$> Prelude.takeText

instance Prelude.ToText RetentionAction where
  toText (RetentionAction' x) = x

instance Prelude.Hashable RetentionAction

instance Prelude.NFData RetentionAction

instance Prelude.ToByteString RetentionAction

instance Prelude.ToQuery RetentionAction

instance Prelude.ToHeader RetentionAction

instance Prelude.ToJSON RetentionAction where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON RetentionAction where
  parseJSON = Prelude.parseJSONText "RetentionAction"
