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
-- Module      : Network.AWS.SES.TestRenderTemplate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a preview of the MIME content of an email when provided with a template and a set of replacement data.
--
--
-- You can execute this operation no more than once per second.
module Network.AWS.SES.TestRenderTemplate
  ( -- * Creating a Request
    testRenderTemplate,
    TestRenderTemplate,

    -- * Request Lenses
    trtTemplateName,
    trtTemplateData,

    -- * Destructuring the Response
    testRenderTemplateResponse,
    TestRenderTemplateResponse,

    -- * Response Lenses
    trtrrsRenderedTemplate,
    trtrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SES.Types

-- | /See:/ 'testRenderTemplate' smart constructor.
data TestRenderTemplate = TestRenderTemplate'
  { _trtTemplateName ::
      !Text,
    _trtTemplateData :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'TestRenderTemplate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'trtTemplateName' - The name of the template that you want to render.
--
-- * 'trtTemplateData' - A list of replacement values to apply to the template. This parameter is a JSON object, typically consisting of key-value pairs in which the keys correspond to replacement tags in the email template.
testRenderTemplate ::
  -- | 'trtTemplateName'
  Text ->
  -- | 'trtTemplateData'
  Text ->
  TestRenderTemplate
testRenderTemplate pTemplateName_ pTemplateData_ =
  TestRenderTemplate'
    { _trtTemplateName =
        pTemplateName_,
      _trtTemplateData = pTemplateData_
    }

-- | The name of the template that you want to render.
trtTemplateName :: Lens' TestRenderTemplate Text
trtTemplateName = lens _trtTemplateName (\s a -> s {_trtTemplateName = a})

-- | A list of replacement values to apply to the template. This parameter is a JSON object, typically consisting of key-value pairs in which the keys correspond to replacement tags in the email template.
trtTemplateData :: Lens' TestRenderTemplate Text
trtTemplateData = lens _trtTemplateData (\s a -> s {_trtTemplateData = a})

instance AWSRequest TestRenderTemplate where
  type
    Rs TestRenderTemplate =
      TestRenderTemplateResponse
  request = postQuery ses
  response =
    receiveXMLWrapper
      "TestRenderTemplateResult"
      ( \s h x ->
          TestRenderTemplateResponse'
            <$> (x .@? "RenderedTemplate") <*> (pure (fromEnum s))
      )

instance Hashable TestRenderTemplate

instance NFData TestRenderTemplate

instance ToHeaders TestRenderTemplate where
  toHeaders = const mempty

instance ToPath TestRenderTemplate where
  toPath = const "/"

instance ToQuery TestRenderTemplate where
  toQuery TestRenderTemplate' {..} =
    mconcat
      [ "Action" =: ("TestRenderTemplate" :: ByteString),
        "Version" =: ("2010-12-01" :: ByteString),
        "TemplateName" =: _trtTemplateName,
        "TemplateData" =: _trtTemplateData
      ]

-- | /See:/ 'testRenderTemplateResponse' smart constructor.
data TestRenderTemplateResponse = TestRenderTemplateResponse'
  { _trtrrsRenderedTemplate ::
      !(Maybe Text),
    _trtrrsResponseStatus ::
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

-- | Creates a value of 'TestRenderTemplateResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'trtrrsRenderedTemplate' - The complete MIME message rendered by applying the data in the TemplateData parameter to the template specified in the TemplateName parameter.
--
-- * 'trtrrsResponseStatus' - -- | The response status code.
testRenderTemplateResponse ::
  -- | 'trtrrsResponseStatus'
  Int ->
  TestRenderTemplateResponse
testRenderTemplateResponse pResponseStatus_ =
  TestRenderTemplateResponse'
    { _trtrrsRenderedTemplate =
        Nothing,
      _trtrrsResponseStatus = pResponseStatus_
    }

-- | The complete MIME message rendered by applying the data in the TemplateData parameter to the template specified in the TemplateName parameter.
trtrrsRenderedTemplate :: Lens' TestRenderTemplateResponse (Maybe Text)
trtrrsRenderedTemplate = lens _trtrrsRenderedTemplate (\s a -> s {_trtrrsRenderedTemplate = a})

-- | -- | The response status code.
trtrrsResponseStatus :: Lens' TestRenderTemplateResponse Int
trtrrsResponseStatus = lens _trtrrsResponseStatus (\s a -> s {_trtrrsResponseStatus = a})

instance NFData TestRenderTemplateResponse
