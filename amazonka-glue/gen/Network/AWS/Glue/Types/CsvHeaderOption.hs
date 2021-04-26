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
-- Module      : Network.AWS.Glue.Types.CsvHeaderOption
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.CsvHeaderOption
  ( CsvHeaderOption
      ( ..,
        CsvHeaderOptionABSENT,
        CsvHeaderOptionPRESENT,
        CsvHeaderOptionUNKNOWN
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CsvHeaderOption = CsvHeaderOption'
  { fromCsvHeaderOption ::
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

pattern CsvHeaderOptionABSENT :: CsvHeaderOption
pattern CsvHeaderOptionABSENT = CsvHeaderOption' "ABSENT"

pattern CsvHeaderOptionPRESENT :: CsvHeaderOption
pattern CsvHeaderOptionPRESENT = CsvHeaderOption' "PRESENT"

pattern CsvHeaderOptionUNKNOWN :: CsvHeaderOption
pattern CsvHeaderOptionUNKNOWN = CsvHeaderOption' "UNKNOWN"

{-# COMPLETE
  CsvHeaderOptionABSENT,
  CsvHeaderOptionPRESENT,
  CsvHeaderOptionUNKNOWN,
  CsvHeaderOption'
  #-}

instance Prelude.FromText CsvHeaderOption where
  parser = CsvHeaderOption' Prelude.<$> Prelude.takeText

instance Prelude.ToText CsvHeaderOption where
  toText (CsvHeaderOption' x) = x

instance Prelude.Hashable CsvHeaderOption

instance Prelude.NFData CsvHeaderOption

instance Prelude.ToByteString CsvHeaderOption

instance Prelude.ToQuery CsvHeaderOption

instance Prelude.ToHeader CsvHeaderOption

instance Prelude.ToJSON CsvHeaderOption where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON CsvHeaderOption where
  parseJSON = Prelude.parseJSONText "CsvHeaderOption"
