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
-- Module      : Network.AWS.Firehose.Types.OrcFormatVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Firehose.Types.OrcFormatVersion
  ( OrcFormatVersion
      ( ..,
        OrcFormatVersionV011,
        OrcFormatVersionV012
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype OrcFormatVersion = OrcFormatVersion'
  { fromOrcFormatVersion ::
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

pattern OrcFormatVersionV011 :: OrcFormatVersion
pattern OrcFormatVersionV011 = OrcFormatVersion' "V0_11"

pattern OrcFormatVersionV012 :: OrcFormatVersion
pattern OrcFormatVersionV012 = OrcFormatVersion' "V0_12"

{-# COMPLETE
  OrcFormatVersionV011,
  OrcFormatVersionV012,
  OrcFormatVersion'
  #-}

instance Prelude.FromText OrcFormatVersion where
  parser = OrcFormatVersion' Prelude.<$> Prelude.takeText

instance Prelude.ToText OrcFormatVersion where
  toText (OrcFormatVersion' x) = x

instance Prelude.Hashable OrcFormatVersion

instance Prelude.NFData OrcFormatVersion

instance Prelude.ToByteString OrcFormatVersion

instance Prelude.ToQuery OrcFormatVersion

instance Prelude.ToHeader OrcFormatVersion

instance Prelude.ToJSON OrcFormatVersion where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON OrcFormatVersion where
  parseJSON = Prelude.parseJSONText "OrcFormatVersion"
