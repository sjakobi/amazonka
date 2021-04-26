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
-- Module      : Network.AWS.Pinpoint.Types.Mode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.Mode
  ( Mode
      ( ..,
        ModeDELIVERY,
        ModeFILTER
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype Mode = Mode' {fromMode :: Prelude.Text}
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern ModeDELIVERY :: Mode
pattern ModeDELIVERY = Mode' "DELIVERY"

pattern ModeFILTER :: Mode
pattern ModeFILTER = Mode' "FILTER"

{-# COMPLETE
  ModeDELIVERY,
  ModeFILTER,
  Mode'
  #-}

instance Prelude.FromText Mode where
  parser = Mode' Prelude.<$> Prelude.takeText

instance Prelude.ToText Mode where
  toText (Mode' x) = x

instance Prelude.Hashable Mode

instance Prelude.NFData Mode

instance Prelude.ToByteString Mode

instance Prelude.ToQuery Mode

instance Prelude.ToHeader Mode

instance Prelude.ToJSON Mode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Mode where
  parseJSON = Prelude.parseJSONText "Mode"
