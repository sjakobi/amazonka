{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.RDS.CreateDBProxy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new DB proxy.
module Network.AWS.RDS.CreateDBProxy
  ( -- * Creating a Request
    createDBProxy,
    CreateDBProxy,

    -- * Request Lenses
    cdpIdleClientTimeout,
    cdpVPCSecurityGroupIds,
    cdpDebugLogging,
    cdpTags,
    cdpRequireTLS,
    cdpDBProxyName,
    cdpEngineFamily,
    cdpAuth,
    cdpRoleARN,
    cdpVPCSubnetIds,

    -- * Destructuring the Response
    createDBProxyResponse,
    CreateDBProxyResponse,

    -- * Response Lenses
    cdprrsDBProxy,
    cdprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.RDS.Types
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createDBProxy' smart constructor.
data CreateDBProxy = CreateDBProxy'
  { _cdpIdleClientTimeout ::
      !(Maybe Int),
    _cdpVPCSecurityGroupIds :: !(Maybe [Text]),
    _cdpDebugLogging :: !(Maybe Bool),
    _cdpTags :: !(Maybe [Tag]),
    _cdpRequireTLS :: !(Maybe Bool),
    _cdpDBProxyName :: !Text,
    _cdpEngineFamily :: !EngineFamily,
    _cdpAuth :: ![UserAuthConfig],
    _cdpRoleARN :: !Text,
    _cdpVPCSubnetIds :: ![Text]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateDBProxy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdpIdleClientTimeout' - The number of seconds that a connection to the proxy can be inactive before the proxy disconnects it. You can set this value higher or lower than the connection timeout limit for the associated database.
--
-- * 'cdpVPCSecurityGroupIds' - One or more VPC security group IDs to associate with the new proxy.
--
-- * 'cdpDebugLogging' - Whether the proxy includes detailed information about SQL statements in its logs. This information helps you to debug issues involving SQL behavior or the performance and scalability of the proxy connections. The debug information includes the text of SQL statements that you submit through the proxy. Thus, only enable this setting when needed for debugging, and only when you have security measures in place to safeguard any sensitive information that appears in the logs.
--
-- * 'cdpTags' - An optional set of key-value pairs to associate arbitrary data of your choosing with the proxy.
--
-- * 'cdpRequireTLS' - A Boolean parameter that specifies whether Transport Layer Security (TLS) encryption is required for connections to the proxy. By enabling this setting, you can enforce encrypted TLS connections to the proxy.
--
-- * 'cdpDBProxyName' - The identifier for the proxy. This name must be unique for all proxies owned by your AWS account in the specified AWS Region. An identifier must begin with a letter and must contain only ASCII letters, digits, and hyphens; it can't end with a hyphen or contain two consecutive hyphens.
--
-- * 'cdpEngineFamily' - The kinds of databases that the proxy can connect to. This value determines which database network protocol the proxy recognizes when it interprets network traffic to and from the database. The engine family applies to MySQL and PostgreSQL for both RDS and Aurora.
--
-- * 'cdpAuth' - The authorization mechanism that the proxy uses.
--
-- * 'cdpRoleARN' - The Amazon Resource Name (ARN) of the IAM role that the proxy uses to access secrets in AWS Secrets Manager.
--
-- * 'cdpVPCSubnetIds' - One or more VPC subnet IDs to associate with the new proxy.
createDBProxy ::
  -- | 'cdpDBProxyName'
  Text ->
  -- | 'cdpEngineFamily'
  EngineFamily ->
  -- | 'cdpRoleARN'
  Text ->
  CreateDBProxy
createDBProxy pDBProxyName_ pEngineFamily_ pRoleARN_ =
  CreateDBProxy'
    { _cdpIdleClientTimeout = Nothing,
      _cdpVPCSecurityGroupIds = Nothing,
      _cdpDebugLogging = Nothing,
      _cdpTags = Nothing,
      _cdpRequireTLS = Nothing,
      _cdpDBProxyName = pDBProxyName_,
      _cdpEngineFamily = pEngineFamily_,
      _cdpAuth = mempty,
      _cdpRoleARN = pRoleARN_,
      _cdpVPCSubnetIds = mempty
    }

-- | The number of seconds that a connection to the proxy can be inactive before the proxy disconnects it. You can set this value higher or lower than the connection timeout limit for the associated database.
cdpIdleClientTimeout :: Lens' CreateDBProxy (Maybe Int)
cdpIdleClientTimeout = lens _cdpIdleClientTimeout (\s a -> s {_cdpIdleClientTimeout = a})

-- | One or more VPC security group IDs to associate with the new proxy.
cdpVPCSecurityGroupIds :: Lens' CreateDBProxy [Text]
cdpVPCSecurityGroupIds = lens _cdpVPCSecurityGroupIds (\s a -> s {_cdpVPCSecurityGroupIds = a}) . _Default . _Coerce

-- | Whether the proxy includes detailed information about SQL statements in its logs. This information helps you to debug issues involving SQL behavior or the performance and scalability of the proxy connections. The debug information includes the text of SQL statements that you submit through the proxy. Thus, only enable this setting when needed for debugging, and only when you have security measures in place to safeguard any sensitive information that appears in the logs.
cdpDebugLogging :: Lens' CreateDBProxy (Maybe Bool)
cdpDebugLogging = lens _cdpDebugLogging (\s a -> s {_cdpDebugLogging = a})

-- | An optional set of key-value pairs to associate arbitrary data of your choosing with the proxy.
cdpTags :: Lens' CreateDBProxy [Tag]
cdpTags = lens _cdpTags (\s a -> s {_cdpTags = a}) . _Default . _Coerce

-- | A Boolean parameter that specifies whether Transport Layer Security (TLS) encryption is required for connections to the proxy. By enabling this setting, you can enforce encrypted TLS connections to the proxy.
cdpRequireTLS :: Lens' CreateDBProxy (Maybe Bool)
cdpRequireTLS = lens _cdpRequireTLS (\s a -> s {_cdpRequireTLS = a})

-- | The identifier for the proxy. This name must be unique for all proxies owned by your AWS account in the specified AWS Region. An identifier must begin with a letter and must contain only ASCII letters, digits, and hyphens; it can't end with a hyphen or contain two consecutive hyphens.
cdpDBProxyName :: Lens' CreateDBProxy Text
cdpDBProxyName = lens _cdpDBProxyName (\s a -> s {_cdpDBProxyName = a})

-- | The kinds of databases that the proxy can connect to. This value determines which database network protocol the proxy recognizes when it interprets network traffic to and from the database. The engine family applies to MySQL and PostgreSQL for both RDS and Aurora.
cdpEngineFamily :: Lens' CreateDBProxy EngineFamily
cdpEngineFamily = lens _cdpEngineFamily (\s a -> s {_cdpEngineFamily = a})

-- | The authorization mechanism that the proxy uses.
cdpAuth :: Lens' CreateDBProxy [UserAuthConfig]
cdpAuth = lens _cdpAuth (\s a -> s {_cdpAuth = a}) . _Coerce

-- | The Amazon Resource Name (ARN) of the IAM role that the proxy uses to access secrets in AWS Secrets Manager.
cdpRoleARN :: Lens' CreateDBProxy Text
cdpRoleARN = lens _cdpRoleARN (\s a -> s {_cdpRoleARN = a})

-- | One or more VPC subnet IDs to associate with the new proxy.
cdpVPCSubnetIds :: Lens' CreateDBProxy [Text]
cdpVPCSubnetIds = lens _cdpVPCSubnetIds (\s a -> s {_cdpVPCSubnetIds = a}) . _Coerce

instance AWSRequest CreateDBProxy where
  type Rs CreateDBProxy = CreateDBProxyResponse
  request = postQuery rds
  response =
    receiveXMLWrapper
      "CreateDBProxyResult"
      ( \s h x ->
          CreateDBProxyResponse'
            <$> (x .@? "DBProxy") <*> (pure (fromEnum s))
      )

instance Hashable CreateDBProxy

instance NFData CreateDBProxy

instance ToHeaders CreateDBProxy where
  toHeaders = const mempty

instance ToPath CreateDBProxy where
  toPath = const "/"

instance ToQuery CreateDBProxy where
  toQuery CreateDBProxy' {..} =
    mconcat
      [ "Action" =: ("CreateDBProxy" :: ByteString),
        "Version" =: ("2014-10-31" :: ByteString),
        "IdleClientTimeout" =: _cdpIdleClientTimeout,
        "VpcSecurityGroupIds"
          =: toQuery
            (toQueryList "member" <$> _cdpVPCSecurityGroupIds),
        "DebugLogging" =: _cdpDebugLogging,
        "Tags" =: toQuery (toQueryList "Tag" <$> _cdpTags),
        "RequireTLS" =: _cdpRequireTLS,
        "DBProxyName" =: _cdpDBProxyName,
        "EngineFamily" =: _cdpEngineFamily,
        "Auth" =: toQueryList "member" _cdpAuth,
        "RoleArn" =: _cdpRoleARN,
        "VpcSubnetIds"
          =: toQueryList "member" _cdpVPCSubnetIds
      ]

-- | /See:/ 'createDBProxyResponse' smart constructor.
data CreateDBProxyResponse = CreateDBProxyResponse'
  { _cdprrsDBProxy ::
      !(Maybe DBProxy),
    _cdprrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateDBProxyResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdprrsDBProxy' - The @DBProxy@ structure corresponding to the new proxy.
--
-- * 'cdprrsResponseStatus' - -- | The response status code.
createDBProxyResponse ::
  -- | 'cdprrsResponseStatus'
  Int ->
  CreateDBProxyResponse
createDBProxyResponse pResponseStatus_ =
  CreateDBProxyResponse'
    { _cdprrsDBProxy = Nothing,
      _cdprrsResponseStatus = pResponseStatus_
    }

-- | The @DBProxy@ structure corresponding to the new proxy.
cdprrsDBProxy :: Lens' CreateDBProxyResponse (Maybe DBProxy)
cdprrsDBProxy = lens _cdprrsDBProxy (\s a -> s {_cdprrsDBProxy = a})

-- | -- | The response status code.
cdprrsResponseStatus :: Lens' CreateDBProxyResponse Int
cdprrsResponseStatus = lens _cdprrsResponseStatus (\s a -> s {_cdprrsResponseStatus = a})

instance NFData CreateDBProxyResponse
