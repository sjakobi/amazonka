{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Athena.Types.QueryExecution
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Athena.Types.QueryExecution where

import Network.AWS.Athena.Types.EngineVersion
import Network.AWS.Athena.Types.QueryExecutionContext
import Network.AWS.Athena.Types.QueryExecutionStatistics
import Network.AWS.Athena.Types.QueryExecutionStatus
import Network.AWS.Athena.Types.ResultConfiguration
import Network.AWS.Athena.Types.StatementType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about a single instance of a query execution.
--
--
--
-- /See:/ 'queryExecution' smart constructor.
data QueryExecution = QueryExecution'
  { _qeStatus ::
      !(Maybe QueryExecutionStatus),
    _qeQueryExecutionId :: !(Maybe Text),
    _qeStatistics ::
      !(Maybe QueryExecutionStatistics),
    _qeQuery :: !(Maybe Text),
    _qeQueryExecutionContext ::
      !(Maybe QueryExecutionContext),
    _qeEngineVersion ::
      !(Maybe EngineVersion),
    _qeResultConfiguration ::
      !(Maybe ResultConfiguration),
    _qeWorkGroup :: !(Maybe Text),
    _qeStatementType ::
      !(Maybe StatementType)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'QueryExecution' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qeStatus' - The completion date, current state, submission time, and state change reason (if applicable) for the query execution.
--
-- * 'qeQueryExecutionId' - The unique identifier for each query execution.
--
-- * 'qeStatistics' - Query execution statistics, such as the amount of data scanned, the amount of time that the query took to process, and the type of statement that was run.
--
-- * 'qeQuery' - The SQL query statements which the query execution ran.
--
-- * 'qeQueryExecutionContext' - The database in which the query execution occurred.
--
-- * 'qeEngineVersion' - The engine version that executed the query.
--
-- * 'qeResultConfiguration' - The location in Amazon S3 where query results were stored and the encryption option, if any, used for query results. These are known as "client-side settings". If workgroup settings override client-side settings, then the query uses the location for the query results and the encryption configuration that are specified for the workgroup.
--
-- * 'qeWorkGroup' - The name of the workgroup in which the query ran.
--
-- * 'qeStatementType' - The type of query statement that was run. @DDL@ indicates DDL query statements. @DML@ indicates DML (Data Manipulation Language) query statements, such as @CREATE TABLE AS SELECT@ . @UTILITY@ indicates query statements other than DDL and DML, such as @SHOW CREATE TABLE@ , or @DESCRIBE <table>@ .
queryExecution ::
  QueryExecution
queryExecution =
  QueryExecution'
    { _qeStatus = Nothing,
      _qeQueryExecutionId = Nothing,
      _qeStatistics = Nothing,
      _qeQuery = Nothing,
      _qeQueryExecutionContext = Nothing,
      _qeEngineVersion = Nothing,
      _qeResultConfiguration = Nothing,
      _qeWorkGroup = Nothing,
      _qeStatementType = Nothing
    }

-- | The completion date, current state, submission time, and state change reason (if applicable) for the query execution.
qeStatus :: Lens' QueryExecution (Maybe QueryExecutionStatus)
qeStatus = lens _qeStatus (\s a -> s {_qeStatus = a})

-- | The unique identifier for each query execution.
qeQueryExecutionId :: Lens' QueryExecution (Maybe Text)
qeQueryExecutionId = lens _qeQueryExecutionId (\s a -> s {_qeQueryExecutionId = a})

-- | Query execution statistics, such as the amount of data scanned, the amount of time that the query took to process, and the type of statement that was run.
qeStatistics :: Lens' QueryExecution (Maybe QueryExecutionStatistics)
qeStatistics = lens _qeStatistics (\s a -> s {_qeStatistics = a})

-- | The SQL query statements which the query execution ran.
qeQuery :: Lens' QueryExecution (Maybe Text)
qeQuery = lens _qeQuery (\s a -> s {_qeQuery = a})

-- | The database in which the query execution occurred.
qeQueryExecutionContext :: Lens' QueryExecution (Maybe QueryExecutionContext)
qeQueryExecutionContext = lens _qeQueryExecutionContext (\s a -> s {_qeQueryExecutionContext = a})

-- | The engine version that executed the query.
qeEngineVersion :: Lens' QueryExecution (Maybe EngineVersion)
qeEngineVersion = lens _qeEngineVersion (\s a -> s {_qeEngineVersion = a})

-- | The location in Amazon S3 where query results were stored and the encryption option, if any, used for query results. These are known as "client-side settings". If workgroup settings override client-side settings, then the query uses the location for the query results and the encryption configuration that are specified for the workgroup.
qeResultConfiguration :: Lens' QueryExecution (Maybe ResultConfiguration)
qeResultConfiguration = lens _qeResultConfiguration (\s a -> s {_qeResultConfiguration = a})

-- | The name of the workgroup in which the query ran.
qeWorkGroup :: Lens' QueryExecution (Maybe Text)
qeWorkGroup = lens _qeWorkGroup (\s a -> s {_qeWorkGroup = a})

-- | The type of query statement that was run. @DDL@ indicates DDL query statements. @DML@ indicates DML (Data Manipulation Language) query statements, such as @CREATE TABLE AS SELECT@ . @UTILITY@ indicates query statements other than DDL and DML, such as @SHOW CREATE TABLE@ , or @DESCRIBE <table>@ .
qeStatementType :: Lens' QueryExecution (Maybe StatementType)
qeStatementType = lens _qeStatementType (\s a -> s {_qeStatementType = a})

instance FromJSON QueryExecution where
  parseJSON =
    withObject
      "QueryExecution"
      ( \x ->
          QueryExecution'
            <$> (x .:? "Status")
            <*> (x .:? "QueryExecutionId")
            <*> (x .:? "Statistics")
            <*> (x .:? "Query")
            <*> (x .:? "QueryExecutionContext")
            <*> (x .:? "EngineVersion")
            <*> (x .:? "ResultConfiguration")
            <*> (x .:? "WorkGroup")
            <*> (x .:? "StatementType")
      )

instance Hashable QueryExecution

instance NFData QueryExecution
