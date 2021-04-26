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
-- Module      : Network.AWS.S3.Types.RestoreRequestType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.RestoreRequestType
  ( RestoreRequestType
      ( ..,
        RestoreRequestTypeSELECT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.S3.Internal

newtype RestoreRequestType = RestoreRequestType'
  { fromRestoreRequestType ::
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

pattern RestoreRequestTypeSELECT :: RestoreRequestType
pattern RestoreRequestTypeSELECT = RestoreRequestType' "SELECT"

{-# COMPLETE
  RestoreRequestTypeSELECT,
  RestoreRequestType'
  #-}

instance Prelude.FromText RestoreRequestType where
  parser = RestoreRequestType' Prelude.<$> Prelude.takeText

instance Prelude.ToText RestoreRequestType where
  toText (RestoreRequestType' x) = x

instance Prelude.Hashable RestoreRequestType

instance Prelude.NFData RestoreRequestType

instance Prelude.ToByteString RestoreRequestType

instance Prelude.ToQuery RestoreRequestType

instance Prelude.ToHeader RestoreRequestType

instance Prelude.ToXML RestoreRequestType where
  toXML = Prelude.toXMLText
