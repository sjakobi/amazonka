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
-- Module      : Network.AWS.Connect.StartTaskContact
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Initiates a contact flow to start a new task.
module Network.AWS.Connect.StartTaskContact
  ( -- * Creating a Request
    startTaskContact,
    StartTaskContact,

    -- * Request Lenses
    stcPreviousContactId,
    stcReferences,
    stcAttributes,
    stcDescription,
    stcClientToken,
    stcInstanceId,
    stcContactFlowId,
    stcName,

    -- * Destructuring the Response
    startTaskContactResponse,
    StartTaskContactResponse,

    -- * Response Lenses
    stcrrsContactId,
    stcrrsResponseStatus,
  )
where

import Network.AWS.Connect.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'startTaskContact' smart constructor.
data StartTaskContact = StartTaskContact'
  { _stcPreviousContactId ::
      !(Maybe Text),
    _stcReferences ::
      !(Maybe (Map Text Reference)),
    _stcAttributes ::
      !(Maybe (Map Text Text)),
    _stcDescription :: !(Maybe Text),
    _stcClientToken :: !(Maybe Text),
    _stcInstanceId :: !Text,
    _stcContactFlowId :: !Text,
    _stcName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'StartTaskContact' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'stcPreviousContactId' - The identifier of the previous chat, voice, or task contact.
--
-- * 'stcReferences' - A formatted URL that is shown to an agent in the Contact Control Panel (CCP).
--
-- * 'stcAttributes' - A custom key-value pair using an attribute map. The attributes are standard Amazon Connect attributes, and can be accessed in contact flows just like any other contact attributes. There can be up to 32,768 UTF-8 bytes across all key-value pairs per contact. Attribute keys can include only alphanumeric, dash, and underscore characters.
--
-- * 'stcDescription' - A description of the task that is shown to an agent in the Contact Control Panel (CCP).
--
-- * 'stcClientToken' - A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.
--
-- * 'stcInstanceId' - The identifier of the Amazon Connect instance.
--
-- * 'stcContactFlowId' - The identifier of the contact flow for initiating the tasks. To see the ContactFlowId in the Amazon Connect console user interface, on the navigation menu go to __Routing__ , __Contact Flows__ . Choose the contact flow. On the contact flow page, under the name of the contact flow, choose __Show additional flow information__ . The ContactFlowId is the last part of the ARN, shown here in bold:  arn:aws:connect:us-west-2:xxxxxxxxxxxx:instance/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/contact-flow/__846ec553-a005-41c0-8341-xxxxxxxxxxxx__
--
-- * 'stcName' - The name of a task that is shown to an agent in the Contact Control Panel (CCP).
startTaskContact ::
  -- | 'stcInstanceId'
  Text ->
  -- | 'stcContactFlowId'
  Text ->
  -- | 'stcName'
  Text ->
  StartTaskContact
startTaskContact pInstanceId_ pContactFlowId_ pName_ =
  StartTaskContact'
    { _stcPreviousContactId = Nothing,
      _stcReferences = Nothing,
      _stcAttributes = Nothing,
      _stcDescription = Nothing,
      _stcClientToken = Nothing,
      _stcInstanceId = pInstanceId_,
      _stcContactFlowId = pContactFlowId_,
      _stcName = pName_
    }

-- | The identifier of the previous chat, voice, or task contact.
stcPreviousContactId :: Lens' StartTaskContact (Maybe Text)
stcPreviousContactId = lens _stcPreviousContactId (\s a -> s {_stcPreviousContactId = a})

-- | A formatted URL that is shown to an agent in the Contact Control Panel (CCP).
stcReferences :: Lens' StartTaskContact (HashMap Text Reference)
stcReferences = lens _stcReferences (\s a -> s {_stcReferences = a}) . _Default . _Map

-- | A custom key-value pair using an attribute map. The attributes are standard Amazon Connect attributes, and can be accessed in contact flows just like any other contact attributes. There can be up to 32,768 UTF-8 bytes across all key-value pairs per contact. Attribute keys can include only alphanumeric, dash, and underscore characters.
stcAttributes :: Lens' StartTaskContact (HashMap Text Text)
stcAttributes = lens _stcAttributes (\s a -> s {_stcAttributes = a}) . _Default . _Map

-- | A description of the task that is shown to an agent in the Contact Control Panel (CCP).
stcDescription :: Lens' StartTaskContact (Maybe Text)
stcDescription = lens _stcDescription (\s a -> s {_stcDescription = a})

-- | A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.
stcClientToken :: Lens' StartTaskContact (Maybe Text)
stcClientToken = lens _stcClientToken (\s a -> s {_stcClientToken = a})

-- | The identifier of the Amazon Connect instance.
stcInstanceId :: Lens' StartTaskContact Text
stcInstanceId = lens _stcInstanceId (\s a -> s {_stcInstanceId = a})

-- | The identifier of the contact flow for initiating the tasks. To see the ContactFlowId in the Amazon Connect console user interface, on the navigation menu go to __Routing__ , __Contact Flows__ . Choose the contact flow. On the contact flow page, under the name of the contact flow, choose __Show additional flow information__ . The ContactFlowId is the last part of the ARN, shown here in bold:  arn:aws:connect:us-west-2:xxxxxxxxxxxx:instance/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/contact-flow/__846ec553-a005-41c0-8341-xxxxxxxxxxxx__
stcContactFlowId :: Lens' StartTaskContact Text
stcContactFlowId = lens _stcContactFlowId (\s a -> s {_stcContactFlowId = a})

-- | The name of a task that is shown to an agent in the Contact Control Panel (CCP).
stcName :: Lens' StartTaskContact Text
stcName = lens _stcName (\s a -> s {_stcName = a})

instance AWSRequest StartTaskContact where
  type Rs StartTaskContact = StartTaskContactResponse
  request = putJSON connect
  response =
    receiveJSON
      ( \s h x ->
          StartTaskContactResponse'
            <$> (x .?> "ContactId") <*> (pure (fromEnum s))
      )

instance Hashable StartTaskContact

instance NFData StartTaskContact

instance ToHeaders StartTaskContact where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON StartTaskContact where
  toJSON StartTaskContact' {..} =
    object
      ( catMaybes
          [ ("PreviousContactId" .=) <$> _stcPreviousContactId,
            ("References" .=) <$> _stcReferences,
            ("Attributes" .=) <$> _stcAttributes,
            ("Description" .=) <$> _stcDescription,
            ("ClientToken" .=) <$> _stcClientToken,
            Just ("InstanceId" .= _stcInstanceId),
            Just ("ContactFlowId" .= _stcContactFlowId),
            Just ("Name" .= _stcName)
          ]
      )

instance ToPath StartTaskContact where
  toPath = const "/contact/task"

instance ToQuery StartTaskContact where
  toQuery = const mempty

-- | /See:/ 'startTaskContactResponse' smart constructor.
data StartTaskContactResponse = StartTaskContactResponse'
  { _stcrrsContactId ::
      !(Maybe Text),
    _stcrrsResponseStatus ::
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

-- | Creates a value of 'StartTaskContactResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'stcrrsContactId' - The identifier of this contact within the Amazon Connect instance.
--
-- * 'stcrrsResponseStatus' - -- | The response status code.
startTaskContactResponse ::
  -- | 'stcrrsResponseStatus'
  Int ->
  StartTaskContactResponse
startTaskContactResponse pResponseStatus_ =
  StartTaskContactResponse'
    { _stcrrsContactId =
        Nothing,
      _stcrrsResponseStatus = pResponseStatus_
    }

-- | The identifier of this contact within the Amazon Connect instance.
stcrrsContactId :: Lens' StartTaskContactResponse (Maybe Text)
stcrrsContactId = lens _stcrrsContactId (\s a -> s {_stcrrsContactId = a})

-- | -- | The response status code.
stcrrsResponseStatus :: Lens' StartTaskContactResponse Int
stcrrsResponseStatus = lens _stcrrsResponseStatus (\s a -> s {_stcrrsResponseStatus = a})

instance NFData StartTaskContactResponse
