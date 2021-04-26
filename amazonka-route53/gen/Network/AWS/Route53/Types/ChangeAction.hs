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
-- Module      : Network.AWS.Route53.Types.ChangeAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53.Types.ChangeAction
  ( ChangeAction
      ( ..,
        ChangeActionCREATE,
        ChangeActionDELETE,
        ChangeActionUPSERT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Route53.Internal

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

pattern ChangeActionCREATE :: ChangeAction
pattern ChangeActionCREATE = ChangeAction' "CREATE"

pattern ChangeActionDELETE :: ChangeAction
pattern ChangeActionDELETE = ChangeAction' "DELETE"

pattern ChangeActionUPSERT :: ChangeAction
pattern ChangeActionUPSERT = ChangeAction' "UPSERT"

{-# COMPLETE
  ChangeActionCREATE,
  ChangeActionDELETE,
  ChangeActionUPSERT,
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

instance Prelude.ToXML ChangeAction where
  toXML = Prelude.toXMLText
