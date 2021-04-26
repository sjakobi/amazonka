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
-- Module      : Network.AWS.ServiceCatalog.Types.Replacement
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServiceCatalog.Types.Replacement
  ( Replacement
      ( ..,
        ReplacementCONDITIONAL,
        ReplacementFALSE,
        ReplacementTRUE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype Replacement = Replacement'
  { fromReplacement ::
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

pattern ReplacementCONDITIONAL :: Replacement
pattern ReplacementCONDITIONAL = Replacement' "CONDITIONAL"

pattern ReplacementFALSE :: Replacement
pattern ReplacementFALSE = Replacement' "FALSE"

pattern ReplacementTRUE :: Replacement
pattern ReplacementTRUE = Replacement' "TRUE"

{-# COMPLETE
  ReplacementCONDITIONAL,
  ReplacementFALSE,
  ReplacementTRUE,
  Replacement'
  #-}

instance Prelude.FromText Replacement where
  parser = Replacement' Prelude.<$> Prelude.takeText

instance Prelude.ToText Replacement where
  toText (Replacement' x) = x

instance Prelude.Hashable Replacement

instance Prelude.NFData Replacement

instance Prelude.ToByteString Replacement

instance Prelude.ToQuery Replacement

instance Prelude.ToHeader Replacement

instance Prelude.FromJSON Replacement where
  parseJSON = Prelude.parseJSONText "Replacement"
