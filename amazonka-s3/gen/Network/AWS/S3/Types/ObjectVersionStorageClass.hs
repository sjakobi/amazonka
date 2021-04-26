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
-- Module      : Network.AWS.S3.Types.ObjectVersionStorageClass
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.ObjectVersionStorageClass
  ( ObjectVersionStorageClass
      ( ..,
        ObjectVersionStorageClassSTANDARD
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.S3.Internal

newtype ObjectVersionStorageClass = ObjectVersionStorageClass'
  { fromObjectVersionStorageClass ::
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

pattern ObjectVersionStorageClassSTANDARD :: ObjectVersionStorageClass
pattern ObjectVersionStorageClassSTANDARD = ObjectVersionStorageClass' "STANDARD"

{-# COMPLETE
  ObjectVersionStorageClassSTANDARD,
  ObjectVersionStorageClass'
  #-}

instance Prelude.FromText ObjectVersionStorageClass where
  parser = ObjectVersionStorageClass' Prelude.<$> Prelude.takeText

instance Prelude.ToText ObjectVersionStorageClass where
  toText (ObjectVersionStorageClass' x) = x

instance Prelude.Hashable ObjectVersionStorageClass

instance Prelude.NFData ObjectVersionStorageClass

instance Prelude.ToByteString ObjectVersionStorageClass

instance Prelude.ToQuery ObjectVersionStorageClass

instance Prelude.ToHeader ObjectVersionStorageClass

instance Prelude.FromXML ObjectVersionStorageClass where
  parseXML = Prelude.parseXMLText "ObjectVersionStorageClass"
