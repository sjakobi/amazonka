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
-- Module      : Network.AWS.Glue.Types.NodeType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.NodeType
  ( NodeType
      ( ..,
        NodeTypeCRAWLER,
        NodeTypeJOB,
        NodeTypeTRIGGER
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype NodeType = NodeType'
  { fromNodeType ::
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

pattern NodeTypeCRAWLER :: NodeType
pattern NodeTypeCRAWLER = NodeType' "CRAWLER"

pattern NodeTypeJOB :: NodeType
pattern NodeTypeJOB = NodeType' "JOB"

pattern NodeTypeTRIGGER :: NodeType
pattern NodeTypeTRIGGER = NodeType' "TRIGGER"

{-# COMPLETE
  NodeTypeCRAWLER,
  NodeTypeJOB,
  NodeTypeTRIGGER,
  NodeType'
  #-}

instance Prelude.FromText NodeType where
  parser = NodeType' Prelude.<$> Prelude.takeText

instance Prelude.ToText NodeType where
  toText (NodeType' x) = x

instance Prelude.Hashable NodeType

instance Prelude.NFData NodeType

instance Prelude.ToByteString NodeType

instance Prelude.ToQuery NodeType

instance Prelude.ToHeader NodeType

instance Prelude.FromJSON NodeType where
  parseJSON = Prelude.parseJSONText "NodeType"
