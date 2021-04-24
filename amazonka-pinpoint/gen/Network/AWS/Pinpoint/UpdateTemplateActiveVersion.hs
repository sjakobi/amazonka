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
-- Module      : Network.AWS.Pinpoint.UpdateTemplateActiveVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Changes the status of a specific version of a message template to /active/ .
module Network.AWS.Pinpoint.UpdateTemplateActiveVersion
  ( -- * Creating a Request
    updateTemplateActiveVersion,
    UpdateTemplateActiveVersion,

    -- * Request Lenses
    utavTemplateName,
    utavTemplateType,
    utavTemplateActiveVersionRequest,

    -- * Destructuring the Response
    updateTemplateActiveVersionResponse,
    UpdateTemplateActiveVersionResponse,

    -- * Response Lenses
    utavrrsResponseStatus,
    utavrrsMessageBody,
  )
where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateTemplateActiveVersion' smart constructor.
data UpdateTemplateActiveVersion = UpdateTemplateActiveVersion'
  { _utavTemplateName ::
      !Text,
    _utavTemplateType ::
      !Text,
    _utavTemplateActiveVersionRequest ::
      !TemplateActiveVersionRequest
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateTemplateActiveVersion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'utavTemplateName' - The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.
--
-- * 'utavTemplateType' - The type of channel that the message template is designed for. Valid values are: EMAIL, PUSH, SMS, and VOICE.
--
-- * 'utavTemplateActiveVersionRequest' - Undocumented member.
updateTemplateActiveVersion ::
  -- | 'utavTemplateName'
  Text ->
  -- | 'utavTemplateType'
  Text ->
  -- | 'utavTemplateActiveVersionRequest'
  TemplateActiveVersionRequest ->
  UpdateTemplateActiveVersion
updateTemplateActiveVersion
  pTemplateName_
  pTemplateType_
  pTemplateActiveVersionRequest_ =
    UpdateTemplateActiveVersion'
      { _utavTemplateName =
          pTemplateName_,
        _utavTemplateType = pTemplateType_,
        _utavTemplateActiveVersionRequest =
          pTemplateActiveVersionRequest_
      }

-- | The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.
utavTemplateName :: Lens' UpdateTemplateActiveVersion Text
utavTemplateName = lens _utavTemplateName (\s a -> s {_utavTemplateName = a})

-- | The type of channel that the message template is designed for. Valid values are: EMAIL, PUSH, SMS, and VOICE.
utavTemplateType :: Lens' UpdateTemplateActiveVersion Text
utavTemplateType = lens _utavTemplateType (\s a -> s {_utavTemplateType = a})

-- | Undocumented member.
utavTemplateActiveVersionRequest :: Lens' UpdateTemplateActiveVersion TemplateActiveVersionRequest
utavTemplateActiveVersionRequest = lens _utavTemplateActiveVersionRequest (\s a -> s {_utavTemplateActiveVersionRequest = a})

instance AWSRequest UpdateTemplateActiveVersion where
  type
    Rs UpdateTemplateActiveVersion =
      UpdateTemplateActiveVersionResponse
  request = putJSON pinpoint
  response =
    receiveJSON
      ( \s h x ->
          UpdateTemplateActiveVersionResponse'
            <$> (pure (fromEnum s)) <*> (eitherParseJSON x)
      )

instance Hashable UpdateTemplateActiveVersion

instance NFData UpdateTemplateActiveVersion

instance ToHeaders UpdateTemplateActiveVersion where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateTemplateActiveVersion where
  toJSON UpdateTemplateActiveVersion' {..} =
    object
      ( catMaybes
          [ Just
              ( "TemplateActiveVersionRequest"
                  .= _utavTemplateActiveVersionRequest
              )
          ]
      )

instance ToPath UpdateTemplateActiveVersion where
  toPath UpdateTemplateActiveVersion' {..} =
    mconcat
      [ "/v1/templates/",
        toBS _utavTemplateName,
        "/",
        toBS _utavTemplateType,
        "/active-version"
      ]

instance ToQuery UpdateTemplateActiveVersion where
  toQuery = const mempty

-- | /See:/ 'updateTemplateActiveVersionResponse' smart constructor.
data UpdateTemplateActiveVersionResponse = UpdateTemplateActiveVersionResponse'
  { _utavrrsResponseStatus ::
      !Int,
    _utavrrsMessageBody ::
      !MessageBody
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateTemplateActiveVersionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'utavrrsResponseStatus' - -- | The response status code.
--
-- * 'utavrrsMessageBody' - Undocumented member.
updateTemplateActiveVersionResponse ::
  -- | 'utavrrsResponseStatus'
  Int ->
  -- | 'utavrrsMessageBody'
  MessageBody ->
  UpdateTemplateActiveVersionResponse
updateTemplateActiveVersionResponse
  pResponseStatus_
  pMessageBody_ =
    UpdateTemplateActiveVersionResponse'
      { _utavrrsResponseStatus =
          pResponseStatus_,
        _utavrrsMessageBody = pMessageBody_
      }

-- | -- | The response status code.
utavrrsResponseStatus :: Lens' UpdateTemplateActiveVersionResponse Int
utavrrsResponseStatus = lens _utavrrsResponseStatus (\s a -> s {_utavrrsResponseStatus = a})

-- | Undocumented member.
utavrrsMessageBody :: Lens' UpdateTemplateActiveVersionResponse MessageBody
utavrrsMessageBody = lens _utavrrsMessageBody (\s a -> s {_utavrrsMessageBody = a})

instance NFData UpdateTemplateActiveVersionResponse
