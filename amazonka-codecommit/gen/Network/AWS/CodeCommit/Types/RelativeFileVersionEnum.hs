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
-- Module      : Network.AWS.CodeCommit.Types.RelativeFileVersionEnum
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeCommit.Types.RelativeFileVersionEnum
  ( RelativeFileVersionEnum
      ( ..,
        RelativeFileVersionEnumAFTER,
        RelativeFileVersionEnumBEFORE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype RelativeFileVersionEnum = RelativeFileVersionEnum'
  { fromRelativeFileVersionEnum ::
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

pattern RelativeFileVersionEnumAFTER :: RelativeFileVersionEnum
pattern RelativeFileVersionEnumAFTER = RelativeFileVersionEnum' "AFTER"

pattern RelativeFileVersionEnumBEFORE :: RelativeFileVersionEnum
pattern RelativeFileVersionEnumBEFORE = RelativeFileVersionEnum' "BEFORE"

{-# COMPLETE
  RelativeFileVersionEnumAFTER,
  RelativeFileVersionEnumBEFORE,
  RelativeFileVersionEnum'
  #-}

instance Prelude.FromText RelativeFileVersionEnum where
  parser = RelativeFileVersionEnum' Prelude.<$> Prelude.takeText

instance Prelude.ToText RelativeFileVersionEnum where
  toText (RelativeFileVersionEnum' x) = x

instance Prelude.Hashable RelativeFileVersionEnum

instance Prelude.NFData RelativeFileVersionEnum

instance Prelude.ToByteString RelativeFileVersionEnum

instance Prelude.ToQuery RelativeFileVersionEnum

instance Prelude.ToHeader RelativeFileVersionEnum

instance Prelude.ToJSON RelativeFileVersionEnum where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON RelativeFileVersionEnum where
  parseJSON = Prelude.parseJSONText "RelativeFileVersionEnum"
