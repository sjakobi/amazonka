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
-- Module      : Network.AWS.Redshift.Types.Mode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Redshift.Types.Mode
  ( Mode
      ( ..,
        ModeHighPerformance,
        ModeStandard
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Redshift.Internal

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

pattern ModeHighPerformance :: Mode
pattern ModeHighPerformance = Mode' "high-performance"

pattern ModeStandard :: Mode
pattern ModeStandard = Mode' "standard"

{-# COMPLETE
  ModeHighPerformance,
  ModeStandard,
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

instance Prelude.FromXML Mode where
  parseXML = Prelude.parseXMLText "Mode"
