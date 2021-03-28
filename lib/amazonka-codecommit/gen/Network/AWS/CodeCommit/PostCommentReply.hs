{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeCommit.PostCommentReply
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Posts a comment in reply to an existing comment on a comparison between commits or a pull request.
module Network.AWS.CodeCommit.PostCommentReply
    (
    -- * Creating a request
      PostCommentReply (..)
    , mkPostCommentReply
    -- ** Request lenses
    , pcrInReplyTo
    , pcrContent
    , pcrClientRequestToken

    -- * Destructuring the response
    , PostCommentReplyResponse (..)
    , mkPostCommentReplyResponse
    -- ** Response lenses
    , pcrrrsComment
    , pcrrrsResponseStatus
    ) where

import qualified Network.AWS.CodeCommit.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkPostCommentReply' smart constructor.
data PostCommentReply = PostCommentReply'
  { inReplyTo :: Types.InReplyTo
    -- ^ The system-generated ID of the comment to which you want to reply. To get this ID, use 'GetCommentsForComparedCommit' or 'GetCommentsForPullRequest' .
  , content :: Types.Content
    -- ^ The contents of your reply to a comment.
  , clientRequestToken :: Core.Maybe Types.ClientRequestToken
    -- ^ A unique, client-generated idempotency token that, when provided in a request, ensures the request cannot be repeated with a changed parameter. If a request is received with the same parameters and a token is included, the request returns information about the initial request that used that token.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'PostCommentReply' value with any optional fields omitted.
mkPostCommentReply
    :: Types.InReplyTo -- ^ 'inReplyTo'
    -> Types.Content -- ^ 'content'
    -> PostCommentReply
mkPostCommentReply inReplyTo content
  = PostCommentReply'{inReplyTo, content,
                      clientRequestToken = Core.Nothing}

-- | The system-generated ID of the comment to which you want to reply. To get this ID, use 'GetCommentsForComparedCommit' or 'GetCommentsForPullRequest' .
--
-- /Note:/ Consider using 'inReplyTo' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pcrInReplyTo :: Lens.Lens' PostCommentReply Types.InReplyTo
pcrInReplyTo = Lens.field @"inReplyTo"
{-# INLINEABLE pcrInReplyTo #-}
{-# DEPRECATED inReplyTo "Use generic-lens or generic-optics with 'inReplyTo' instead"  #-}

-- | The contents of your reply to a comment.
--
-- /Note:/ Consider using 'content' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pcrContent :: Lens.Lens' PostCommentReply Types.Content
pcrContent = Lens.field @"content"
{-# INLINEABLE pcrContent #-}
{-# DEPRECATED content "Use generic-lens or generic-optics with 'content' instead"  #-}

-- | A unique, client-generated idempotency token that, when provided in a request, ensures the request cannot be repeated with a changed parameter. If a request is received with the same parameters and a token is included, the request returns information about the initial request that used that token.
--
-- /Note:/ Consider using 'clientRequestToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pcrClientRequestToken :: Lens.Lens' PostCommentReply (Core.Maybe Types.ClientRequestToken)
pcrClientRequestToken = Lens.field @"clientRequestToken"
{-# INLINEABLE pcrClientRequestToken #-}
{-# DEPRECATED clientRequestToken "Use generic-lens or generic-optics with 'clientRequestToken' instead"  #-}

instance Core.ToQuery PostCommentReply where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders PostCommentReply where
        toHeaders PostCommentReply{..}
          = Core.pure
              ("X-Amz-Target", "CodeCommit_20150413.PostCommentReply")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON PostCommentReply where
        toJSON PostCommentReply{..}
          = Core.object
              (Core.catMaybes
                 [Core.Just ("inReplyTo" Core..= inReplyTo),
                  Core.Just ("content" Core..= content),
                  ("clientRequestToken" Core..=) Core.<$> clientRequestToken])

instance Core.AWSRequest PostCommentReply where
        type Rs PostCommentReply = PostCommentReplyResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 PostCommentReplyResponse' Core.<$>
                   (x Core..:? "comment") Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | /See:/ 'mkPostCommentReplyResponse' smart constructor.
data PostCommentReplyResponse = PostCommentReplyResponse'
  { comment :: Core.Maybe Types.Comment
    -- ^ Information about the reply to a comment.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass Core.NFData

-- | Creates a 'PostCommentReplyResponse' value with any optional fields omitted.
mkPostCommentReplyResponse
    :: Core.Int -- ^ 'responseStatus'
    -> PostCommentReplyResponse
mkPostCommentReplyResponse responseStatus
  = PostCommentReplyResponse'{comment = Core.Nothing, responseStatus}

-- | Information about the reply to a comment.
--
-- /Note:/ Consider using 'comment' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pcrrrsComment :: Lens.Lens' PostCommentReplyResponse (Core.Maybe Types.Comment)
pcrrrsComment = Lens.field @"comment"
{-# INLINEABLE pcrrrsComment #-}
{-# DEPRECATED comment "Use generic-lens or generic-optics with 'comment' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pcrrrsResponseStatus :: Lens.Lens' PostCommentReplyResponse Core.Int
pcrrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE pcrrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
