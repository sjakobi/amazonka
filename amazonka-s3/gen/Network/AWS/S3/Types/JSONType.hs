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
-- Module      : Network.AWS.S3.Types.JSONType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.JSONType
  ( JSONType
      ( ..,
        JSONTypeDOCUMENT,
        JSONTypeLINES
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.S3.Internal

newtype JSONType = JSONType'
  { fromJSONType ::
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

pattern JSONTypeDOCUMENT :: JSONType
pattern JSONTypeDOCUMENT = JSONType' "DOCUMENT"

pattern JSONTypeLINES :: JSONType
pattern JSONTypeLINES = JSONType' "LINES"

{-# COMPLETE
  JSONTypeDOCUMENT,
  JSONTypeLINES,
  JSONType'
  #-}

instance Prelude.FromText JSONType where
  parser = JSONType' Prelude.<$> Prelude.takeText

instance Prelude.ToText JSONType where
  toText (JSONType' x) = x

instance Prelude.Hashable JSONType

instance Prelude.NFData JSONType

instance Prelude.ToByteString JSONType

instance Prelude.ToQuery JSONType

instance Prelude.ToHeader JSONType

instance Prelude.ToXML JSONType where
  toXML = Prelude.toXMLText
