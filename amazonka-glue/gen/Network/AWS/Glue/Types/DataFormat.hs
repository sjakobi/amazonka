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
-- Module      : Network.AWS.Glue.Types.DataFormat
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.DataFormat
  ( DataFormat
      ( ..,
        DataFormatAVRO
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DataFormat = DataFormat'
  { fromDataFormat ::
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

pattern DataFormatAVRO :: DataFormat
pattern DataFormatAVRO = DataFormat' "AVRO"

{-# COMPLETE
  DataFormatAVRO,
  DataFormat'
  #-}

instance Prelude.FromText DataFormat where
  parser = DataFormat' Prelude.<$> Prelude.takeText

instance Prelude.ToText DataFormat where
  toText (DataFormat' x) = x

instance Prelude.Hashable DataFormat

instance Prelude.NFData DataFormat

instance Prelude.ToByteString DataFormat

instance Prelude.ToQuery DataFormat

instance Prelude.ToHeader DataFormat

instance Prelude.ToJSON DataFormat where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON DataFormat where
  parseJSON = Prelude.parseJSONText "DataFormat"
