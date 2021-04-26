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
-- Module      : Network.AWS.ElasticSearch.Types.LogType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticSearch.Types.LogType
  ( LogType
      ( ..,
        LogTypeAUDITLOGS,
        LogTypeESAPPLICATIONLOGS,
        LogTypeINDEXSLOWLOGS,
        LogTypeSEARCHSLOWLOGS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Type of Log File, it can be one of the following:
--
-- -   INDEX_SLOW_LOGS: Index slow logs contain insert requests that took
--     more time than configured index query log threshold to execute.
-- -   SEARCH_SLOW_LOGS: Search slow logs contain search queries that took
--     more time than configured search query log threshold to execute.
-- -   ES_APPLICATION_LOGS: Elasticsearch application logs contain
--     information about errors and warnings raised during the operation of
--     the service and can be useful for troubleshooting.
-- -   AUDIT_LOGS: Audit logs contain records of user requests for access
--     from the domain.
newtype LogType = LogType'
  { fromLogType ::
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

pattern LogTypeAUDITLOGS :: LogType
pattern LogTypeAUDITLOGS = LogType' "AUDIT_LOGS"

pattern LogTypeESAPPLICATIONLOGS :: LogType
pattern LogTypeESAPPLICATIONLOGS = LogType' "ES_APPLICATION_LOGS"

pattern LogTypeINDEXSLOWLOGS :: LogType
pattern LogTypeINDEXSLOWLOGS = LogType' "INDEX_SLOW_LOGS"

pattern LogTypeSEARCHSLOWLOGS :: LogType
pattern LogTypeSEARCHSLOWLOGS = LogType' "SEARCH_SLOW_LOGS"

{-# COMPLETE
  LogTypeAUDITLOGS,
  LogTypeESAPPLICATIONLOGS,
  LogTypeINDEXSLOWLOGS,
  LogTypeSEARCHSLOWLOGS,
  LogType'
  #-}

instance Prelude.FromText LogType where
  parser = LogType' Prelude.<$> Prelude.takeText

instance Prelude.ToText LogType where
  toText (LogType' x) = x

instance Prelude.Hashable LogType

instance Prelude.NFData LogType

instance Prelude.ToByteString LogType

instance Prelude.ToQuery LogType

instance Prelude.ToHeader LogType

instance Prelude.ToJSON LogType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON LogType where
  parseJSON = Prelude.parseJSONText "LogType"
