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
-- Module      : Network.AWS.MediaConvert.Types.CmfcScte35Esam
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.CmfcScte35Esam
  ( CmfcScte35Esam
      ( ..,
        CmfcScte35EsamINSERT,
        CmfcScte35EsamNONE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Use this setting only when you specify SCTE-35 markers from ESAM. Choose
-- INSERT to put SCTE-35 markers in this output at the insertion points
-- that you specify in an ESAM XML document. Provide the document in the
-- setting SCC XML (sccXml).
newtype CmfcScte35Esam = CmfcScte35Esam'
  { fromCmfcScte35Esam ::
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

pattern CmfcScte35EsamINSERT :: CmfcScte35Esam
pattern CmfcScte35EsamINSERT = CmfcScte35Esam' "INSERT"

pattern CmfcScte35EsamNONE :: CmfcScte35Esam
pattern CmfcScte35EsamNONE = CmfcScte35Esam' "NONE"

{-# COMPLETE
  CmfcScte35EsamINSERT,
  CmfcScte35EsamNONE,
  CmfcScte35Esam'
  #-}

instance Prelude.FromText CmfcScte35Esam where
  parser = CmfcScte35Esam' Prelude.<$> Prelude.takeText

instance Prelude.ToText CmfcScte35Esam where
  toText (CmfcScte35Esam' x) = x

instance Prelude.Hashable CmfcScte35Esam

instance Prelude.NFData CmfcScte35Esam

instance Prelude.ToByteString CmfcScte35Esam

instance Prelude.ToQuery CmfcScte35Esam

instance Prelude.ToHeader CmfcScte35Esam

instance Prelude.ToJSON CmfcScte35Esam where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON CmfcScte35Esam where
  parseJSON = Prelude.parseJSONText "CmfcScte35Esam"
