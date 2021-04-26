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
-- Module      : Network.AWS.DynamoDB.Types.StreamViewType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.StreamViewType
  ( StreamViewType
      ( ..,
        StreamViewTypeKEYSONLY,
        StreamViewTypeNEWANDOLDIMAGES,
        StreamViewTypeNEWIMAGE,
        StreamViewTypeOLDIMAGE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype StreamViewType = StreamViewType'
  { fromStreamViewType ::
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

pattern StreamViewTypeKEYSONLY :: StreamViewType
pattern StreamViewTypeKEYSONLY = StreamViewType' "KEYS_ONLY"

pattern StreamViewTypeNEWANDOLDIMAGES :: StreamViewType
pattern StreamViewTypeNEWANDOLDIMAGES = StreamViewType' "NEW_AND_OLD_IMAGES"

pattern StreamViewTypeNEWIMAGE :: StreamViewType
pattern StreamViewTypeNEWIMAGE = StreamViewType' "NEW_IMAGE"

pattern StreamViewTypeOLDIMAGE :: StreamViewType
pattern StreamViewTypeOLDIMAGE = StreamViewType' "OLD_IMAGE"

{-# COMPLETE
  StreamViewTypeKEYSONLY,
  StreamViewTypeNEWANDOLDIMAGES,
  StreamViewTypeNEWIMAGE,
  StreamViewTypeOLDIMAGE,
  StreamViewType'
  #-}

instance Prelude.FromText StreamViewType where
  parser = StreamViewType' Prelude.<$> Prelude.takeText

instance Prelude.ToText StreamViewType where
  toText (StreamViewType' x) = x

instance Prelude.Hashable StreamViewType

instance Prelude.NFData StreamViewType

instance Prelude.ToByteString StreamViewType

instance Prelude.ToQuery StreamViewType

instance Prelude.ToHeader StreamViewType

instance Prelude.ToJSON StreamViewType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON StreamViewType where
  parseJSON = Prelude.parseJSONText "StreamViewType"
