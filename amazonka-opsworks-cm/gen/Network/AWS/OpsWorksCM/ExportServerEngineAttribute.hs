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
-- Module      : Network.AWS.OpsWorksCM.ExportServerEngineAttribute
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Exports a specified server engine attribute as a base64-encoded string. For example, you can export user data that you can use in EC2 to associate nodes with a server.
--
--
-- This operation is synchronous.
--
-- A @ValidationException@ is raised when parameters of the request are not valid. A @ResourceNotFoundException@ is thrown when the server does not exist. An @InvalidStateException@ is thrown when the server is in any of the following states: CREATING, TERMINATED, FAILED or DELETING.
module Network.AWS.OpsWorksCM.ExportServerEngineAttribute
  ( -- * Creating a Request
    exportServerEngineAttribute,
    ExportServerEngineAttribute,

    -- * Request Lenses
    eseaInputAttributes,
    eseaExportAttributeName,
    eseaServerName,

    -- * Destructuring the Response
    exportServerEngineAttributeResponse,
    ExportServerEngineAttributeResponse,

    -- * Response Lenses
    esearrsEngineAttribute,
    esearrsServerName,
    esearrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.OpsWorksCM.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'exportServerEngineAttribute' smart constructor.
data ExportServerEngineAttribute = ExportServerEngineAttribute'
  { _eseaInputAttributes ::
      !( Maybe
           [EngineAttribute]
       ),
    _eseaExportAttributeName ::
      !Text,
    _eseaServerName ::
      !Text
  }
  deriving
    ( Eq,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ExportServerEngineAttribute' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eseaInputAttributes' - The list of engine attributes. The list type is @EngineAttribute@ . An @EngineAttribute@ list item is a pair that includes an attribute name and its value. For the @Userdata@ ExportAttributeName, the following are supported engine attribute names.     * __RunList__ In Chef, a list of roles or recipes that are run in the specified order. In Puppet, this parameter is ignored.     * __OrganizationName__ In Chef, an organization name. AWS OpsWorks for Chef Automate always creates the organization @default@ . In Puppet, this parameter is ignored.     * __NodeEnvironment__ In Chef, a node environment (for example, development, staging, or one-box). In Puppet, this parameter is ignored.     * __NodeClientVersion__ In Chef, the version of the Chef engine (three numbers separated by dots, such as 13.8.5). If this attribute is empty, OpsWorks for Chef Automate uses the most current version. In Puppet, this parameter is ignored.
--
-- * 'eseaExportAttributeName' - The name of the export attribute. Currently, the supported export attribute is @Userdata@ . This exports a user data script that includes parameters and values provided in the @InputAttributes@ list.
--
-- * 'eseaServerName' - The name of the server from which you are exporting the attribute.
exportServerEngineAttribute ::
  -- | 'eseaExportAttributeName'
  Text ->
  -- | 'eseaServerName'
  Text ->
  ExportServerEngineAttribute
exportServerEngineAttribute
  pExportAttributeName_
  pServerName_ =
    ExportServerEngineAttribute'
      { _eseaInputAttributes =
          Nothing,
        _eseaExportAttributeName =
          pExportAttributeName_,
        _eseaServerName = pServerName_
      }

-- | The list of engine attributes. The list type is @EngineAttribute@ . An @EngineAttribute@ list item is a pair that includes an attribute name and its value. For the @Userdata@ ExportAttributeName, the following are supported engine attribute names.     * __RunList__ In Chef, a list of roles or recipes that are run in the specified order. In Puppet, this parameter is ignored.     * __OrganizationName__ In Chef, an organization name. AWS OpsWorks for Chef Automate always creates the organization @default@ . In Puppet, this parameter is ignored.     * __NodeEnvironment__ In Chef, a node environment (for example, development, staging, or one-box). In Puppet, this parameter is ignored.     * __NodeClientVersion__ In Chef, the version of the Chef engine (three numbers separated by dots, such as 13.8.5). If this attribute is empty, OpsWorks for Chef Automate uses the most current version. In Puppet, this parameter is ignored.
eseaInputAttributes :: Lens' ExportServerEngineAttribute [EngineAttribute]
eseaInputAttributes = lens _eseaInputAttributes (\s a -> s {_eseaInputAttributes = a}) . _Default . _Coerce

-- | The name of the export attribute. Currently, the supported export attribute is @Userdata@ . This exports a user data script that includes parameters and values provided in the @InputAttributes@ list.
eseaExportAttributeName :: Lens' ExportServerEngineAttribute Text
eseaExportAttributeName = lens _eseaExportAttributeName (\s a -> s {_eseaExportAttributeName = a})

-- | The name of the server from which you are exporting the attribute.
eseaServerName :: Lens' ExportServerEngineAttribute Text
eseaServerName = lens _eseaServerName (\s a -> s {_eseaServerName = a})

instance AWSRequest ExportServerEngineAttribute where
  type
    Rs ExportServerEngineAttribute =
      ExportServerEngineAttributeResponse
  request = postJSON opsWorksCM
  response =
    receiveJSON
      ( \s h x ->
          ExportServerEngineAttributeResponse'
            <$> (x .?> "EngineAttribute")
            <*> (x .?> "ServerName")
            <*> (pure (fromEnum s))
      )

instance Hashable ExportServerEngineAttribute

instance NFData ExportServerEngineAttribute

instance ToHeaders ExportServerEngineAttribute where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "OpsWorksCM_V2016_11_01.ExportServerEngineAttribute" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ExportServerEngineAttribute where
  toJSON ExportServerEngineAttribute' {..} =
    object
      ( catMaybes
          [ ("InputAttributes" .=) <$> _eseaInputAttributes,
            Just
              ("ExportAttributeName" .= _eseaExportAttributeName),
            Just ("ServerName" .= _eseaServerName)
          ]
      )

instance ToPath ExportServerEngineAttribute where
  toPath = const "/"

instance ToQuery ExportServerEngineAttribute where
  toQuery = const mempty

-- | /See:/ 'exportServerEngineAttributeResponse' smart constructor.
data ExportServerEngineAttributeResponse = ExportServerEngineAttributeResponse'
  { _esearrsEngineAttribute ::
      !( Maybe
           EngineAttribute
       ),
    _esearrsServerName ::
      !( Maybe
           Text
       ),
    _esearrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ExportServerEngineAttributeResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'esearrsEngineAttribute' - The requested engine attribute pair with attribute name and value.
--
-- * 'esearrsServerName' - The server name used in the request.
--
-- * 'esearrsResponseStatus' - -- | The response status code.
exportServerEngineAttributeResponse ::
  -- | 'esearrsResponseStatus'
  Int ->
  ExportServerEngineAttributeResponse
exportServerEngineAttributeResponse pResponseStatus_ =
  ExportServerEngineAttributeResponse'
    { _esearrsEngineAttribute =
        Nothing,
      _esearrsServerName = Nothing,
      _esearrsResponseStatus =
        pResponseStatus_
    }

-- | The requested engine attribute pair with attribute name and value.
esearrsEngineAttribute :: Lens' ExportServerEngineAttributeResponse (Maybe EngineAttribute)
esearrsEngineAttribute = lens _esearrsEngineAttribute (\s a -> s {_esearrsEngineAttribute = a})

-- | The server name used in the request.
esearrsServerName :: Lens' ExportServerEngineAttributeResponse (Maybe Text)
esearrsServerName = lens _esearrsServerName (\s a -> s {_esearrsServerName = a})

-- | -- | The response status code.
esearrsResponseStatus :: Lens' ExportServerEngineAttributeResponse Int
esearrsResponseStatus = lens _esearrsResponseStatus (\s a -> s {_esearrsResponseStatus = a})

instance NFData ExportServerEngineAttributeResponse
