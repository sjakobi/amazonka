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
-- Module      : Network.AWS.EFS.Types.PerformanceMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EFS.Types.PerformanceMode
  ( PerformanceMode
      ( ..,
        PerformanceModeGeneralPurpose,
        PerformanceModeMaxIO
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype PerformanceMode = PerformanceMode'
  { fromPerformanceMode ::
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

pattern PerformanceModeGeneralPurpose :: PerformanceMode
pattern PerformanceModeGeneralPurpose = PerformanceMode' "generalPurpose"

pattern PerformanceModeMaxIO :: PerformanceMode
pattern PerformanceModeMaxIO = PerformanceMode' "maxIO"

{-# COMPLETE
  PerformanceModeGeneralPurpose,
  PerformanceModeMaxIO,
  PerformanceMode'
  #-}

instance Prelude.FromText PerformanceMode where
  parser = PerformanceMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText PerformanceMode where
  toText (PerformanceMode' x) = x

instance Prelude.Hashable PerformanceMode

instance Prelude.NFData PerformanceMode

instance Prelude.ToByteString PerformanceMode

instance Prelude.ToQuery PerformanceMode

instance Prelude.ToHeader PerformanceMode

instance Prelude.ToJSON PerformanceMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON PerformanceMode where
  parseJSON = Prelude.parseJSONText "PerformanceMode"
