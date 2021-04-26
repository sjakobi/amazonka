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
-- Module      : Network.AWS.MediaConvert.Types.MpdScte35Esam
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.MpdScte35Esam
  ( MpdScte35Esam
      ( ..,
        MpdScte35EsamINSERT,
        MpdScte35EsamNONE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Use this setting only when you specify SCTE-35 markers from ESAM. Choose
-- INSERT to put SCTE-35 markers in this output at the insertion points
-- that you specify in an ESAM XML document. Provide the document in the
-- setting SCC XML (sccXml).
newtype MpdScte35Esam = MpdScte35Esam'
  { fromMpdScte35Esam ::
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

pattern MpdScte35EsamINSERT :: MpdScte35Esam
pattern MpdScte35EsamINSERT = MpdScte35Esam' "INSERT"

pattern MpdScte35EsamNONE :: MpdScte35Esam
pattern MpdScte35EsamNONE = MpdScte35Esam' "NONE"

{-# COMPLETE
  MpdScte35EsamINSERT,
  MpdScte35EsamNONE,
  MpdScte35Esam'
  #-}

instance Prelude.FromText MpdScte35Esam where
  parser = MpdScte35Esam' Prelude.<$> Prelude.takeText

instance Prelude.ToText MpdScte35Esam where
  toText (MpdScte35Esam' x) = x

instance Prelude.Hashable MpdScte35Esam

instance Prelude.NFData MpdScte35Esam

instance Prelude.ToByteString MpdScte35Esam

instance Prelude.ToQuery MpdScte35Esam

instance Prelude.ToHeader MpdScte35Esam

instance Prelude.ToJSON MpdScte35Esam where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON MpdScte35Esam where
  parseJSON = Prelude.parseJSONText "MpdScte35Esam"
