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
-- Module      : Network.AWS.Glacier.Types.FileHeaderInfo
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glacier.Types.FileHeaderInfo
  ( FileHeaderInfo
      ( ..,
        FileHeaderInfoIGNORE,
        FileHeaderInfoNONE,
        FileHeaderInfoUSE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype FileHeaderInfo = FileHeaderInfo'
  { fromFileHeaderInfo ::
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

pattern FileHeaderInfoIGNORE :: FileHeaderInfo
pattern FileHeaderInfoIGNORE = FileHeaderInfo' "IGNORE"

pattern FileHeaderInfoNONE :: FileHeaderInfo
pattern FileHeaderInfoNONE = FileHeaderInfo' "NONE"

pattern FileHeaderInfoUSE :: FileHeaderInfo
pattern FileHeaderInfoUSE = FileHeaderInfo' "USE"

{-# COMPLETE
  FileHeaderInfoIGNORE,
  FileHeaderInfoNONE,
  FileHeaderInfoUSE,
  FileHeaderInfo'
  #-}

instance Prelude.FromText FileHeaderInfo where
  parser = FileHeaderInfo' Prelude.<$> Prelude.takeText

instance Prelude.ToText FileHeaderInfo where
  toText (FileHeaderInfo' x) = x

instance Prelude.Hashable FileHeaderInfo

instance Prelude.NFData FileHeaderInfo

instance Prelude.ToByteString FileHeaderInfo

instance Prelude.ToQuery FileHeaderInfo

instance Prelude.ToHeader FileHeaderInfo

instance Prelude.ToJSON FileHeaderInfo where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON FileHeaderInfo where
  parseJSON = Prelude.parseJSONText "FileHeaderInfo"
