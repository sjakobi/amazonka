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
-- Module      : Network.AWS.CloudSearchDomains.Types.QueryParser
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudSearchDomains.Types.QueryParser
  ( QueryParser
      ( ..,
        QueryParserDismax,
        QueryParserLucene,
        QueryParserSimple,
        QueryParserStructured
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype QueryParser = QueryParser'
  { fromQueryParser ::
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

pattern QueryParserDismax :: QueryParser
pattern QueryParserDismax = QueryParser' "dismax"

pattern QueryParserLucene :: QueryParser
pattern QueryParserLucene = QueryParser' "lucene"

pattern QueryParserSimple :: QueryParser
pattern QueryParserSimple = QueryParser' "simple"

pattern QueryParserStructured :: QueryParser
pattern QueryParserStructured = QueryParser' "structured"

{-# COMPLETE
  QueryParserDismax,
  QueryParserLucene,
  QueryParserSimple,
  QueryParserStructured,
  QueryParser'
  #-}

instance Prelude.FromText QueryParser where
  parser = QueryParser' Prelude.<$> Prelude.takeText

instance Prelude.ToText QueryParser where
  toText (QueryParser' x) = x

instance Prelude.Hashable QueryParser

instance Prelude.NFData QueryParser

instance Prelude.ToByteString QueryParser

instance Prelude.ToQuery QueryParser

instance Prelude.ToHeader QueryParser

instance Prelude.ToJSON QueryParser where
  toJSON = Prelude.toJSONText
