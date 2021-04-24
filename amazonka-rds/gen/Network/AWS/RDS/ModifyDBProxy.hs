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
-- Module      : Network.AWS.RDS.ModifyDBProxy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Changes the settings for an existing DB proxy.
module Network.AWS.RDS.ModifyDBProxy
  ( -- * Creating a Request
    modifyDBProxy,
    ModifyDBProxy,

    -- * Request Lenses
    mdpRoleARN,
    mdpNewDBProxyName,
    mdpIdleClientTimeout,
    mdpAuth,
    mdpSecurityGroups,
    mdpDebugLogging,
    mdpRequireTLS,
    mdpDBProxyName,

    -- * Destructuring the Response
    modifyDBProxyResponse,
    ModifyDBProxyResponse,

    -- * Response Lenses
    mdprrsDBProxy,
    mdprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.RDS.Types
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'modifyDBProxy' smart constructor.
data ModifyDBProxy = ModifyDBProxy'
  { _mdpRoleARN ::
      !(Maybe Text),
    _mdpNewDBProxyName :: !(Maybe Text),
    _mdpIdleClientTimeout :: !(Maybe Int),
    _mdpAuth :: !(Maybe [UserAuthConfig]),
    _mdpSecurityGroups :: !(Maybe [Text]),
    _mdpDebugLogging :: !(Maybe Bool),
    _mdpRequireTLS :: !(Maybe Bool),
    _mdpDBProxyName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ModifyDBProxy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdpRoleARN' - The Amazon Resource Name (ARN) of the IAM role that the proxy uses to access secrets in AWS Secrets Manager.
--
-- * 'mdpNewDBProxyName' - The new identifier for the @DBProxy@ . An identifier must begin with a letter and must contain only ASCII letters, digits, and hyphens; it can't end with a hyphen or contain two consecutive hyphens.
--
-- * 'mdpIdleClientTimeout' - The number of seconds that a connection to the proxy can be inactive before the proxy disconnects it. You can set this value higher or lower than the connection timeout limit for the associated database.
--
-- * 'mdpAuth' - The new authentication settings for the @DBProxy@ .
--
-- * 'mdpSecurityGroups' - The new list of security groups for the @DBProxy@ .
--
-- * 'mdpDebugLogging' - Whether the proxy includes detailed information about SQL statements in its logs. This information helps you to debug issues involving SQL behavior or the performance and scalability of the proxy connections. The debug information includes the text of SQL statements that you submit through the proxy. Thus, only enable this setting when needed for debugging, and only when you have security measures in place to safeguard any sensitive information that appears in the logs.
--
-- * 'mdpRequireTLS' - Whether Transport Layer Security (TLS) encryption is required for connections to the proxy. By enabling this setting, you can enforce encrypted TLS connections to the proxy, even if the associated database doesn't use TLS.
--
-- * 'mdpDBProxyName' - The identifier for the @DBProxy@ to modify.
modifyDBProxy ::
  -- | 'mdpDBProxyName'
  Text ->
  ModifyDBProxy
modifyDBProxy pDBProxyName_ =
  ModifyDBProxy'
    { _mdpRoleARN = Nothing,
      _mdpNewDBProxyName = Nothing,
      _mdpIdleClientTimeout = Nothing,
      _mdpAuth = Nothing,
      _mdpSecurityGroups = Nothing,
      _mdpDebugLogging = Nothing,
      _mdpRequireTLS = Nothing,
      _mdpDBProxyName = pDBProxyName_
    }

-- | The Amazon Resource Name (ARN) of the IAM role that the proxy uses to access secrets in AWS Secrets Manager.
mdpRoleARN :: Lens' ModifyDBProxy (Maybe Text)
mdpRoleARN = lens _mdpRoleARN (\s a -> s {_mdpRoleARN = a})

-- | The new identifier for the @DBProxy@ . An identifier must begin with a letter and must contain only ASCII letters, digits, and hyphens; it can't end with a hyphen or contain two consecutive hyphens.
mdpNewDBProxyName :: Lens' ModifyDBProxy (Maybe Text)
mdpNewDBProxyName = lens _mdpNewDBProxyName (\s a -> s {_mdpNewDBProxyName = a})

-- | The number of seconds that a connection to the proxy can be inactive before the proxy disconnects it. You can set this value higher or lower than the connection timeout limit for the associated database.
mdpIdleClientTimeout :: Lens' ModifyDBProxy (Maybe Int)
mdpIdleClientTimeout = lens _mdpIdleClientTimeout (\s a -> s {_mdpIdleClientTimeout = a})

-- | The new authentication settings for the @DBProxy@ .
mdpAuth :: Lens' ModifyDBProxy [UserAuthConfig]
mdpAuth = lens _mdpAuth (\s a -> s {_mdpAuth = a}) . _Default . _Coerce

-- | The new list of security groups for the @DBProxy@ .
mdpSecurityGroups :: Lens' ModifyDBProxy [Text]
mdpSecurityGroups = lens _mdpSecurityGroups (\s a -> s {_mdpSecurityGroups = a}) . _Default . _Coerce

-- | Whether the proxy includes detailed information about SQL statements in its logs. This information helps you to debug issues involving SQL behavior or the performance and scalability of the proxy connections. The debug information includes the text of SQL statements that you submit through the proxy. Thus, only enable this setting when needed for debugging, and only when you have security measures in place to safeguard any sensitive information that appears in the logs.
mdpDebugLogging :: Lens' ModifyDBProxy (Maybe Bool)
mdpDebugLogging = lens _mdpDebugLogging (\s a -> s {_mdpDebugLogging = a})

-- | Whether Transport Layer Security (TLS) encryption is required for connections to the proxy. By enabling this setting, you can enforce encrypted TLS connections to the proxy, even if the associated database doesn't use TLS.
mdpRequireTLS :: Lens' ModifyDBProxy (Maybe Bool)
mdpRequireTLS = lens _mdpRequireTLS (\s a -> s {_mdpRequireTLS = a})

-- | The identifier for the @DBProxy@ to modify.
mdpDBProxyName :: Lens' ModifyDBProxy Text
mdpDBProxyName = lens _mdpDBProxyName (\s a -> s {_mdpDBProxyName = a})

instance AWSRequest ModifyDBProxy where
  type Rs ModifyDBProxy = ModifyDBProxyResponse
  request = postQuery rds
  response =
    receiveXMLWrapper
      "ModifyDBProxyResult"
      ( \s h x ->
          ModifyDBProxyResponse'
            <$> (x .@? "DBProxy") <*> (pure (fromEnum s))
      )

instance Hashable ModifyDBProxy

instance NFData ModifyDBProxy

instance ToHeaders ModifyDBProxy where
  toHeaders = const mempty

instance ToPath ModifyDBProxy where
  toPath = const "/"

instance ToQuery ModifyDBProxy where
  toQuery ModifyDBProxy' {..} =
    mconcat
      [ "Action" =: ("ModifyDBProxy" :: ByteString),
        "Version" =: ("2014-10-31" :: ByteString),
        "RoleArn" =: _mdpRoleARN,
        "NewDBProxyName" =: _mdpNewDBProxyName,
        "IdleClientTimeout" =: _mdpIdleClientTimeout,
        "Auth"
          =: toQuery (toQueryList "member" <$> _mdpAuth),
        "SecurityGroups"
          =: toQuery
            (toQueryList "member" <$> _mdpSecurityGroups),
        "DebugLogging" =: _mdpDebugLogging,
        "RequireTLS" =: _mdpRequireTLS,
        "DBProxyName" =: _mdpDBProxyName
      ]

-- | /See:/ 'modifyDBProxyResponse' smart constructor.
data ModifyDBProxyResponse = ModifyDBProxyResponse'
  { _mdprrsDBProxy ::
      !(Maybe DBProxy),
    _mdprrsResponseStatus ::
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

-- | Creates a value of 'ModifyDBProxyResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdprrsDBProxy' - The @DBProxy@ object representing the new settings for the proxy.
--
-- * 'mdprrsResponseStatus' - -- | The response status code.
modifyDBProxyResponse ::
  -- | 'mdprrsResponseStatus'
  Int ->
  ModifyDBProxyResponse
modifyDBProxyResponse pResponseStatus_ =
  ModifyDBProxyResponse'
    { _mdprrsDBProxy = Nothing,
      _mdprrsResponseStatus = pResponseStatus_
    }

-- | The @DBProxy@ object representing the new settings for the proxy.
mdprrsDBProxy :: Lens' ModifyDBProxyResponse (Maybe DBProxy)
mdprrsDBProxy = lens _mdprrsDBProxy (\s a -> s {_mdprrsDBProxy = a})

-- | -- | The response status code.
mdprrsResponseStatus :: Lens' ModifyDBProxyResponse Int
mdprrsResponseStatus = lens _mdprrsResponseStatus (\s a -> s {_mdprrsResponseStatus = a})

instance NFData ModifyDBProxyResponse
