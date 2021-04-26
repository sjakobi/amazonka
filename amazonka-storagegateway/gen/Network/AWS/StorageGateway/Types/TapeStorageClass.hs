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
-- Module      : Network.AWS.StorageGateway.Types.TapeStorageClass
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.StorageGateway.Types.TapeStorageClass
  ( TapeStorageClass
      ( ..,
        TapeStorageClassDEEPARCHIVE,
        TapeStorageClassGLACIER
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype TapeStorageClass = TapeStorageClass'
  { fromTapeStorageClass ::
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

pattern TapeStorageClassDEEPARCHIVE :: TapeStorageClass
pattern TapeStorageClassDEEPARCHIVE = TapeStorageClass' "DEEP_ARCHIVE"

pattern TapeStorageClassGLACIER :: TapeStorageClass
pattern TapeStorageClassGLACIER = TapeStorageClass' "GLACIER"

{-# COMPLETE
  TapeStorageClassDEEPARCHIVE,
  TapeStorageClassGLACIER,
  TapeStorageClass'
  #-}

instance Prelude.FromText TapeStorageClass where
  parser = TapeStorageClass' Prelude.<$> Prelude.takeText

instance Prelude.ToText TapeStorageClass where
  toText (TapeStorageClass' x) = x

instance Prelude.Hashable TapeStorageClass

instance Prelude.NFData TapeStorageClass

instance Prelude.ToByteString TapeStorageClass

instance Prelude.ToQuery TapeStorageClass

instance Prelude.ToHeader TapeStorageClass

instance Prelude.ToJSON TapeStorageClass where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON TapeStorageClass where
  parseJSON = Prelude.parseJSONText "TapeStorageClass"
