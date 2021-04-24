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
-- Module      : Network.AWS.SES.UpdateTemplate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an email template. Email templates enable you to send personalized email to one or more destinations in a single API operation. For more information, see the <https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-personalized-email-api.html Amazon SES Developer Guide> .
--
--
-- You can execute this operation no more than once per second.
module Network.AWS.SES.UpdateTemplate
  ( -- * Creating a Request
    updateTemplate,
    UpdateTemplate,

    -- * Request Lenses
    utTemplate,

    -- * Destructuring the Response
    updateTemplateResponse,
    UpdateTemplateResponse,

    -- * Response Lenses
    utrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SES.Types

-- | /See:/ 'updateTemplate' smart constructor.
newtype UpdateTemplate = UpdateTemplate'
  { _utTemplate ::
      Template
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateTemplate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'utTemplate' - Undocumented member.
updateTemplate ::
  -- | 'utTemplate'
  Template ->
  UpdateTemplate
updateTemplate pTemplate_ =
  UpdateTemplate' {_utTemplate = pTemplate_}

-- | Undocumented member.
utTemplate :: Lens' UpdateTemplate Template
utTemplate = lens _utTemplate (\s a -> s {_utTemplate = a})

instance AWSRequest UpdateTemplate where
  type Rs UpdateTemplate = UpdateTemplateResponse
  request = postQuery ses
  response =
    receiveXMLWrapper
      "UpdateTemplateResult"
      ( \s h x ->
          UpdateTemplateResponse' <$> (pure (fromEnum s))
      )

instance Hashable UpdateTemplate

instance NFData UpdateTemplate

instance ToHeaders UpdateTemplate where
  toHeaders = const mempty

instance ToPath UpdateTemplate where
  toPath = const "/"

instance ToQuery UpdateTemplate where
  toQuery UpdateTemplate' {..} =
    mconcat
      [ "Action" =: ("UpdateTemplate" :: ByteString),
        "Version" =: ("2010-12-01" :: ByteString),
        "Template" =: _utTemplate
      ]

-- | /See:/ 'updateTemplateResponse' smart constructor.
newtype UpdateTemplateResponse = UpdateTemplateResponse'
  { _utrrsResponseStatus ::
      Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateTemplateResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'utrrsResponseStatus' - -- | The response status code.
updateTemplateResponse ::
  -- | 'utrrsResponseStatus'
  Int ->
  UpdateTemplateResponse
updateTemplateResponse pResponseStatus_ =
  UpdateTemplateResponse'
    { _utrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
utrrsResponseStatus :: Lens' UpdateTemplateResponse Int
utrrsResponseStatus = lens _utrrsResponseStatus (\s a -> s {_utrrsResponseStatus = a})

instance NFData UpdateTemplateResponse
