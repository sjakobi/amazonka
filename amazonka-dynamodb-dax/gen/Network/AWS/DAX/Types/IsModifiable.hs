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
-- Module      : Network.AWS.DAX.Types.IsModifiable
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DAX.Types.IsModifiable
  ( IsModifiable
      ( ..,
        IsModifiableCONDITIONAL,
        IsModifiableFALSE,
        IsModifiableTRUE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype IsModifiable = IsModifiable'
  { fromIsModifiable ::
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

pattern IsModifiableCONDITIONAL :: IsModifiable
pattern IsModifiableCONDITIONAL = IsModifiable' "CONDITIONAL"

pattern IsModifiableFALSE :: IsModifiable
pattern IsModifiableFALSE = IsModifiable' "FALSE"

pattern IsModifiableTRUE :: IsModifiable
pattern IsModifiableTRUE = IsModifiable' "TRUE"

{-# COMPLETE
  IsModifiableCONDITIONAL,
  IsModifiableFALSE,
  IsModifiableTRUE,
  IsModifiable'
  #-}

instance Prelude.FromText IsModifiable where
  parser = IsModifiable' Prelude.<$> Prelude.takeText

instance Prelude.ToText IsModifiable where
  toText (IsModifiable' x) = x

instance Prelude.Hashable IsModifiable

instance Prelude.NFData IsModifiable

instance Prelude.ToByteString IsModifiable

instance Prelude.ToQuery IsModifiable

instance Prelude.ToHeader IsModifiable

instance Prelude.FromJSON IsModifiable where
  parseJSON = Prelude.parseJSONText "IsModifiable"
