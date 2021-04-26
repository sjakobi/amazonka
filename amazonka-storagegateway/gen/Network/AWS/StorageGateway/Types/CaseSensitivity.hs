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
-- Module      : Network.AWS.StorageGateway.Types.CaseSensitivity
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.StorageGateway.Types.CaseSensitivity
  ( CaseSensitivity
      ( ..,
        CaseSensitivityCaseSensitive,
        CaseSensitivityClientSpecified
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CaseSensitivity = CaseSensitivity'
  { fromCaseSensitivity ::
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

pattern CaseSensitivityCaseSensitive :: CaseSensitivity
pattern CaseSensitivityCaseSensitive = CaseSensitivity' "CaseSensitive"

pattern CaseSensitivityClientSpecified :: CaseSensitivity
pattern CaseSensitivityClientSpecified = CaseSensitivity' "ClientSpecified"

{-# COMPLETE
  CaseSensitivityCaseSensitive,
  CaseSensitivityClientSpecified,
  CaseSensitivity'
  #-}

instance Prelude.FromText CaseSensitivity where
  parser = CaseSensitivity' Prelude.<$> Prelude.takeText

instance Prelude.ToText CaseSensitivity where
  toText (CaseSensitivity' x) = x

instance Prelude.Hashable CaseSensitivity

instance Prelude.NFData CaseSensitivity

instance Prelude.ToByteString CaseSensitivity

instance Prelude.ToQuery CaseSensitivity

instance Prelude.ToHeader CaseSensitivity

instance Prelude.ToJSON CaseSensitivity where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON CaseSensitivity where
  parseJSON = Prelude.parseJSONText "CaseSensitivity"
